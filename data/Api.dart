import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:super_carga_mobileapp/constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_carga_mobileapp/data/exceptions/exceptions.dart';
import 'package:super_carga_mobileapp/domain/models/contract_details/contract_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/login/login_model.dart';
import '../domain/models/common_models/model.dart';
import '../domain/models/contract_list/contract_list_model.dart';
import '../domain/models/job_details/job_details_model.dart';
import '../domain/models/proposal_details/proposal_details_model.dart';
import '../domain/models/job_list/model.dart';
import '../domain/models/proposal_list/proposal_list_model.dart';
import 'endpoints/endpoints.dart';

import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:super_carga_mobileapp/navigator_global.dart';



String _baseURL = 'http://85.255.1.63:5100';
//String _baseURL = 'http://80.211.250.58:5100';



dynamic _processResponse(http.Response response) {
  print(response.statusCode);
  print(response.body);
  switch (response.statusCode) {
    case 200:
      var responseJson = jsonDecode(response.body);
      return responseJson;
    case 400: //Bad request
      throw BadRequestException(response.body);
    case 401: //Unauthorized
      throw UnAuthorizedException(jsonDecode(response.body)['message']);
    case 403: //Forbidden
      throw UnAuthorizedException(jsonDecode(response.body)['message']);
    case 404: //Resource Not Found
      throw NotFoundException(jsonDecode(response.body)['message']);
    case 500: //Internal Server Error
    default:
      throw FetchDataException(
          'Something went wrong! ${response.statusCode}');
  }
}


Future<Map<String, dynamic>> refreshToken() async {
  String url = _baseURL + Endpoints.REFRESH;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String refreshToken = prefs.getString(preffsConstants.refreshToken)!;
  String accessToken = prefs.getString(preffsConstants.accessToken)!;
  print(" refreshretrive: ${refreshToken}");
  print(" accessRetrive: ${accessToken}");

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
  };

  Map<String, String> body = {
    'accesToken': accessToken,
    'refreshToken': refreshToken,
  };

  http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: json.encode(body),
  );
  if (response.statusCode == 401){
    GlobalNavigator.logOut();
    GlobalNavigator.mySnackbar("Session expired !");
    print("refresh failed");
    return {'accessToken': "null", 'refreshToken': "null"};
  }
  else if (response.statusCode == 200) {
    Map<String, dynamic> responseData = json.decode(response.body);
    String accessToken = responseData['accesToken'];
    String refreshToken = responseData['refreshToken'];
    print("refresh success");
    print("accesSucces: $accessToken ");
    print("refreshSuccess: $refreshToken ");
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(preffsConstants.accessToken, accessToken);
      prefs.setString(preffsConstants.refreshToken, refreshToken);
    });
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }
  else{
    throw Exception('Request failed with status: ${response.statusCode}.');
  }

}
Future<bool> driverPostStartContract(String proposalId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + Endpoints.DRIVER_CONTRACT_START;

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };
  print(proposalId);

  Map<String, String> body = {
    "proposalId": proposalId,
  };
  bool state = false;
  try {
    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      state = true;
    }
    print("reponse: ${response.statusCode}");
  }catch(error){
    throw Exception('Failed to start contract: $error');
  }
  return state;
}


//CONTRACT
Future<dynamic> _driverPostConfirmPictures(String apiUrl, String imagePath1, String imagePath2, String contractId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String URL = _baseURL + apiUrl;
  var result = false;

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };

try {
  // Read the image file and encode it as a base64 string
  var bytes = File(imagePath1).readAsBytesSync();
  final file1Base64Image = base64Encode(bytes);
  bytes = File(imagePath2).readAsBytesSync();
  final file2Base64Image = base64Encode(bytes);
  // Create a JSON object with the contractId and base64-encoded images
  final data = {
    'contractId': contractId,
    'cargoImage': {'content': file1Base64Image, 'extension': '.png'},
    'proofImage': {'content': file2Base64Image, 'extension': '.png'},
  };

  // Convert the JSON object to a string and send it in the request body
  final body = json.encode(data);

  final response = await http.post(
    Uri.parse(URL),
    headers: headers,
    body: body,
  );
  if(response.statusCode == 200){
    result = true;
  }
  final responseData = await response.bodyBytes;
  final responseString = String.fromCharCodes(responseData);
   print(json.decode(responseString));
}catch(error){
  print(" pickup confirm failed");
  throw Exception('Failed to confirm pickup: $error');
}
print(result);
    return result;

}


Future<dynamic> _generalPost(String endpoint, {Map<String,String>? parameters}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + endpoint;


  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };

  try{
    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: json.encode(parameters),
    );
    return _processResponse(response);
  }catch(e){

    throw ExceptionHandlers().getExceptionString(e);
  }

}


 Future<dynamic> _getList(String fristTabEndpoint,String secondTabEndpoint, int tab, {Map<String, String>? queryParameters}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String accessToken = prefs.getString('accessToken')!;
    String URL = _baseURL;
    if (tab == 1){
      URL = URL + fristTabEndpoint;
    }
    else if(tab == 2){
      URL = URL + secondTabEndpoint;
    }

    if (queryParameters != null) {
      String queryString = Uri(queryParameters: queryParameters).query;
      URL += '?' + queryString;
    }
    print(URL);
    var response = await http.get(
      Uri.parse(URL),
      headers: {
        "Authorization": "Bearer " + accessToken,
      },
    );
    if(response.statusCode == 401){
      var tmp = await refreshToken();
      String currentAccessToken = tmp["accessToken"];
      response = await http.get(
        Uri.parse(URL),
        headers: {
          "Authorization": "Bearer " + currentAccessToken,
        },
      );
      if (response.statusCode == 200){
        print("Success: GET method");
        log(response.body);
        return jsonDecode(response.body);
      }
      else{
        GlobalNavigator.mySnackbar("Session expired!");
        GlobalNavigator.logOut();
        throw Exception('2nd call backend failed');
      }
    }
    else if (response.statusCode == 200) {
      print("Success: GET method");
      print(response.body);
      return jsonDecode(response.body);
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String refreshToken = prefs.getString('refreshToken')!;
      print("REFRESHHHH: ");
      print(jsonDecode(response.body));
      throw Exception('Call backend failed');
    }
  }


Future<dynamic> _generalGet(String endpoint, {Map<String, String>? queryParameters}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String accessToken = prefs.getString('accessToken')!;
    String URL = _baseURL + endpoint;

    if (queryParameters != null) {
      String queryString = Uri(queryParameters: queryParameters).query;
      URL += '?' + queryString;
    }
     var response = await http.get(
      Uri.parse(URL),
      headers: {
        "Authorization": "Bearer " + accessToken,
      },
    );

    if(response.statusCode == 401){
      var tmp = await refreshToken();
      String currentAccessToken = tmp["accessToken"];
      response = await http.get(
        Uri.parse(URL),
        headers: {
          "Authorization": "Bearer " + currentAccessToken,
        },
      );
      if (response.statusCode == 200){
        print("Success: GET method");
        log(response.body);
        return jsonDecode(response.body);
      }
      else{
        GlobalNavigator.mySnackbar("Session expired!");
        GlobalNavigator.logOut();
        throw Exception('2nd call backend failed');
      }
    }
    else if (response.statusCode == 200) {
      print("Success: GET method");
      log(response.body);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      throw Exception('Call backend failed');
    }
  }




class DriverRepository {
  final _pageSize = "10";
//GET
  Future<JobDetailsResponse> getJobDetails(String jobId) async {
    final response = await _generalGet(Endpoints.GET_DRIVER_JOB_DETAIL, queryParameters: {'JobId': jobId});
    return JobDetailsResponse.fromJson(response);
  }

  Future<JobListResponse> getJobList(int tab, int page, Filtering filtering ) async {
    final response = await _getList(Endpoints.GET_DRIVER_JOBS_ACTIVE, Endpoints.GET_DRIVER_FAV_JOBS,  tab,  queryParameters: {'Page': page.toString(), 'PageSize': _pageSize, 'Search': filtering.search  });
    return JobListResponse.fromJson(response);
  }

  Future<ProposalDetailsResponse> getProposalDetails(String proposalId) async {
    final response = await _generalGet(Endpoints.GET_PROPOSAL_DETAIL, queryParameters: {'ProposalId': proposalId});
    return ProposalDetailsResponse.fromJson(response);
  }
  Future <ProposalListResponse> getProposalList(int tab, int page ) async {
    final response = await _getList(Endpoints.GET_DRIVER_ACTIVE_PROPOSALS, Endpoints.GET_DRIVER_ARCHIVED_PROPOSALS,  tab,  queryParameters: {'Page': page.toString(), 'PageSize': _pageSize });
    return ProposalListResponse.fromJson(response);
  }

  Future<ContractListResponse> getContractList(int tab, int page, Filtering filtering ) async {
    final response = await _getList(Endpoints.DRIVER_ACTIVE_CONTRACTS, Endpoints.DRIVER_FINISHED_CONTRACTS,  tab,  queryParameters: {'Page': page.toString(), 'PageSize': _pageSize, 'Search': filtering.search });
    return ContractListResponse.fromJson(response);
  }

  Future<ContractDetailsResponse> getContractDetails(String contractId) async {
    final response = await _generalGet(Endpoints.GET_DRIVER_CONTRACT_DETAIL, queryParameters: {'ContractId': contractId});
    return ContractDetailsResponse.fromJson(response);
  }

  Future<dynamic> postConfirmPickup(String imagePath1, String imagePath2, String contractId) async {
    final response =  await _driverPostConfirmPictures(Endpoints.DRIVER_CONTRACT_PICKUP, imagePath1, imagePath2, contractId);
    return response;
  }
  Future<dynamic> postConfirmDelivery(String imagePath1, String imagePath2, String contractId) async {
    final response =  await _driverPostConfirmPictures(Endpoints.DRIVER_CONTRACT_DELIVERED, imagePath1, imagePath2, contractId);
    return response;
  }

  Future<dynamic> postRemoveJobFavourites(String jobId) async {
    final response = await _generalPost(Endpoints.DRIVER_REMOVE_JOB_FAV, parameters: {'jobId': jobId});
    return response;
  }
  Future<dynamic> postAddJobFavourites(String jobId) async {
    final response = await _generalPost(Endpoints.DRIVER_ADD_JOB_FAV, parameters: {'jobId': jobId});
    return response;
  }

  Future<dynamic> postProposalForJob(String jobId, String pricePerKm) async {
    final response = await _generalPost(Endpoints.DRIVER_SEND_PROPOSAL, parameters: {'jobId': jobId, 'pricePerKm': pricePerKm});
    return response;
  }

  Future<LoginResponse> login(String email, String password) async {
      final response = await _generalPost(Endpoints.LOGIN, parameters: {'email': email, 'password': password});
      return LoginResponse.fromJson(response);
  }
}
