// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginRequest _$UserLoginRequestFromJson(Map<String, dynamic> json) {
  return UserLoginRequest(
    json['username'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$UserLoginRequestToJson(UserLoginRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
