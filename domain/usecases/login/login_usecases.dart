import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_carga_mobileapp/data/exceptions/exceptions.dart';
import 'package:super_carga_mobileapp/domain/models/login/login_model.dart';
import 'package:super_carga_mobileapp/constants.dart';

import '../../../data/Api.dart';

class LoginUseCases {
  Future<LoginResponse> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      throw EmptyCredentialsError();
    }
      final response = await DriverRepository().login(email.trim(), password.trim());
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(preffsConstants.appLogin, email);
      prefs.setString(preffsConstants.appPassword, password);
      prefs.setString(preffsConstants.accessToken, response.tokens.accesToken);
      prefs.setString(preffsConstants.refreshToken, response.tokens.refreshToken);
    });
      return response;
  }
}


class EmptyCredentialsError implements Exception {}
class WrongCredentials implements Exception {
}
