// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginData _$UserLoginDataFromJson(Map<String, dynamic> json) {
  return UserLoginData(
    id: json['id'] as String,
    kycStatus: json['kycStatus'] as bool,
    lastNameEn: json['lastNameEn'] as String,
    lastNameTh: json['lastNameTh'] as String,
    loginLatest: json['loginLatest'] as String,
    loginName: json['loginName'] as String,
    loginPassword: json['loginPassword'] as String,
    otpStatus: json['otpStatus'] as bool,
    state: json['state'] as String,
    userProfileImage: json['userProfileImage'] as String,
    userSubtype: json['userSubtype'] as String,
    userType: json['userType'] as String,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$UserLoginDataToJson(UserLoginData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kycStatus': instance.kycStatus,
      'lastNameEn': instance.lastNameEn,
      'lastNameTh': instance.lastNameTh,
      'loginLatest': instance.loginLatest,
      'loginName': instance.loginName,
      'loginPassword': instance.loginPassword,
      'otpStatus': instance.otpStatus,
      'state': instance.state,
      'userProfileImage': instance.userProfileImage,
      'userSubtype': instance.userSubtype,
      'userType': instance.userType,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
