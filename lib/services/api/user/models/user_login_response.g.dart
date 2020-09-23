// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginResponse _$UserLoginResponseFromJson(Map<String, dynamic> json) {
  return UserLoginResponse(
    status: json['status'] as bool,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    userInfo: json['userInfo'] as String,
    newConsent: json['newConsent'] as String,
  )..userProfileImage = json['userProfileImage'] as String;
}

Map<String, dynamic> _$UserLoginResponseToJson(UserLoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userInfo': instance.userInfo,
      'newConsent': instance.newConsent,
      'userProfileImage': instance.userProfileImage,
    };
