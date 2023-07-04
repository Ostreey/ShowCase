
import 'package:freezed_annotation/freezed_annotation.dart';


part 'login_model.freezed.dart';
part 'login_model.g.dart';


class Credentials {
   String? email;
   String? password;

  Credentials({
    required this.email,
    required this.password,
  });
}

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required TokenProperties tokens,
    required UserProperties user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class TokenProperties with _$TokenProperties {
  const factory TokenProperties({
    required String accesToken,
    required String refreshToken,
  }) = _TokenProperties;

  factory TokenProperties.fromJson(Map<String, dynamic> json) =>
      _$TokenPropertiesFromJson(json);
}

@freezed
class UserProperties with _$UserProperties {
  factory UserProperties({
    required String id,
  }) = _UserProperties;

  factory UserProperties.fromJson(Map<String, dynamic> json) =>
      _$UserPropertiesFromJson(json);
}

