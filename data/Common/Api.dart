import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:super_carga_mobileapp/constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:developer';
import 'package:image/image.dart' as img;
import 'dart:typed_data';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:super_carga_mobileapp/navigator_global.dart';

import '../../domain/models/common_models/model.dart';
import '../../domain/models/reviews/reviews_model.dart';
import '../endpoints/endpoints.dart';




String _baseURL = 'http://85.255.1.63:5100';
//String _baseURL = 'http://80.211.250.58:5100';

///////AUTHENTICATION
Future<Map<String, dynamic>> getToken(String email, String password) async {
  String url = _baseURL + Endpoints.LOGIN;

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
  };

  Map<String, String> body = {
    'email': email,
    'password': password,
  };

  http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: json.encode(body),
  );

try{
    print(response.statusCode);
  if (response.statusCode == 200) {
    print(json.decode(response.body));
    Map<String, dynamic> responseData = json.decode(response.body);
    String accessToken = responseData['tokens']['accesToken'];
    String refreshToken = responseData['tokens']['refreshToken'];
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(preffsConstants.accessToken, accessToken);
      prefs.setString(preffsConstants.refreshToken, refreshToken);
    });
    String id = responseData['user']['id'];
    String roles = "role";
    return {'statusCode': response.statusCode, 'id': id, 'role': roles };
  } else {
    return  {'statusCode': response.statusCode};
  }
} catch (error){
  throw Exception('Request failed with status: ${response.statusCode}.');
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


////POST
Future<bool> postProposal(String jobId, var pricePerKm) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + '/drivers/proposals/add';

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };
  print(jobId);
  print(pricePerKm);
  Map<String, String> body = {
    "jobId": jobId,
    "pricePerKm": pricePerKm
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
    print("reponse: ${response.statusCode}");
  }

}catch(error){
    print(" proposal sending failed");
    throw Exception('Failed to post proposal: $error');
  }
  return state;
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

Future<bool> driverSetVehiculeType(String vehiculeType) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + Endpoints.EDIT_DRIVER;

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };
  print(vehiculeType);

  Map<String, String> body = {
    "vehiculeTypeId": vehiculeType,
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



Future<dynamic> changeProfilePicture(String imagePath1) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String URL = _baseURL + Endpoints.USER_CHANGE_PROFILE_IMAGE;
  var result = false;




  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };

  try {
    // Read the image file and encode it as a base64 string

    var image = File(imagePath1);

    Uint8List imageBytes = await image.readAsBytes();
    int orginalImageSize = imageBytes.length;
    print("FILESIZED $orginalImageSize");
    var compressFactor = ((100* 300000)/orginalImageSize).round() ;
    print("FILESIZED $compressFactor");
    Uint8List compressedImage = await FlutterImageCompress.compressWithList(
      imageBytes,
      quality: compressFactor
    );
    // Encode the compressed image in base64
    String base64Image = base64Encode(compressedImage);
    var compressedSize = (compressedImage.lengthInBytes);
    compressedSize = (compressedSize)  ;
    print("FILESIZED $compressedSize");


   // final file1Base64Image = base64Encode(bytes);
    // Create a JSON object with the contractId and base64-encoded images
    final data = {
      'image': {'content': base64Image, 'extension': '.png'},
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
    throw Exception('Failed to change image: $error');
  }
  print(result);
  return result;

}

Future<bool> driverStartContract(String proposalId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + Endpoints.DRIVER_CONTRACT_START;

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };
  Map<String, String> body = {
    "proposalId": proposalId
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
      print("reponse: ${response.statusCode}");
    }

  }catch(error){
    print(" proposal sending failed");
    throw Exception('Failed to post proposal: $error');
  }
  return state;
}

Future<bool> addJobToFavourite(String jobId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + '/drivers/jobs/favorites/add';

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };

  Map<String, String> body = {
    "jobId": jobId
  };


  http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: json.encode(body),
  );

  bool state = false;

  if (response.statusCode == 200) {
    state = true;


  }
  else{
    throw Exception('Request failed with status: ${response.statusCode}.');
  }
  return state;
}

Future<bool> removeJobFromFavourite(String jobId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String accessToken = prefs.getString('accessToken')!;
  String url = _baseURL + '/drivers/jobs/favorites/remove';

  Map<String, String> headers = {
    'accept': 'text/plain',
    'Content-Type': 'application/json',
    "Authorization": "Bearer "+ accessToken
  };

  Map<String, String> body = {
    "jobId": jobId
  };


  http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: json.encode(body),
  );

  bool state = true;

  if (response.statusCode == 200) {
    state = false;
  }
  else{
    throw Exception('Request failed with status: ${response.statusCode}.');
  }
  return state;
}

/////COMMON
class _GetList {
  static Future<dynamic> fetchData(String fristTabURL,String secondTabURL, int tab, {Map<String, String>? queryParameters}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String accessToken = prefs.getString('accessToken')!;
    String URL = _baseURL;
    if (tab == 1){
      URL = URL + fristTabURL;
    }
    else if(tab == 2){
      URL = URL + secondTabURL;
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
}

class _GeneralGet {
  static Future<dynamic> fetchData(String apiUrl, {Map<String, String>? queryParameters}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String accessToken = prefs.getString('accessToken')!;
    String URL = _baseURL + apiUrl;

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
      log(response.body);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      throw Exception('Call backend failed');
    }
  }
}



class Repository {

//GET




  Future<DriverDetailsResponse> driverDriverDetails() async {
    final response = await _GeneralGet.fetchData(Endpoints.GET_DRIVER_DETAIL);
    print(response);
    return DriverDetailsResponse.fromJson(response);
  }




  Future<VehiculeTypeData> driverVehiculeList() async {
    final response = await _GeneralGet.fetchData(Endpoints.GET_VEHICLES);
    return VehiculeTypeData.fromJson(response);
  }

  Future<ReviewPageData> reviewPage() async {
    final response = await _GeneralGet.fetchData(Endpoints.DRIVER_REVIEWS,  queryParameters: { 'Page': '1', 'PageSize': "10" });
    return ReviewPageData.fromJson(response);
  }


}
