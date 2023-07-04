// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      tokens: TokenProperties.fromJson(json['tokens'] as Map<String, dynamic>),
      user: UserProperties.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };

_$_TokenProperties _$$_TokenPropertiesFromJson(Map<String, dynamic> json) =>
    _$_TokenProperties(
      accesToken: json['accesToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_TokenPropertiesToJson(_$_TokenProperties instance) =>
    <String, dynamic>{
      'accesToken': instance.accesToken,
      'refreshToken': instance.refreshToken,
    };

_$_UserProperties _$$_UserPropertiesFromJson(Map<String, dynamic> json) =>
    _$_UserProperties(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_UserPropertiesToJson(_$_UserProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
