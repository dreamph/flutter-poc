// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginResponse _$UserLoginResponseFromJson(Map<String, dynamic> json) {
  return UserLoginResponse(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    status: json['status'] as bool,
    userInfo: json['userInfo'] == null
        ? null
        : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
    userProfileImage: json['userProfileImage'] as String,
  );
}

Map<String, dynamic> _$UserLoginResponseToJson(UserLoginResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'status': instance.status,
      'userInfo': instance.userInfo,
      'userProfileImage': instance.userProfileImage,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    corporateEmail: json['corporateEmail'] as String,
    corporateNameEn: json['corporateNameEn'] as String,
    corporateNameTh: json['corporateNameTh'] as String,
    displayName: json['displayName'] as String,
    emailVerificationStatus: json['emailVerificationStatus'] as bool,
    firstNameEn: json['firstNameEn'] as String,
    firstNameTh: json['firstNameTh'] as String,
    id: json['id'] as String,
    kycStatus: json['kycStatus'] as bool,
    lastNameEn: json['lastNameEn'] as String,
    lastNameTh: json['lastNameTh'] as String,
    loginLatest:
        const CustomDateTimeConverter().fromJson(json['loginLatest'] as int),
    loginName: json['loginName'] as String,
    loginPassword: json['loginPassword'] as String,
    otpStatus: json['otpStatus'] as bool,
    state: json['state'] as String,
    userProfileImage: json['userProfileImage'] as String,
    userSubtype: json['userSubtype'] as String,
    userType: json['userType'] as String,
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'corporateEmail': instance.corporateEmail,
      'corporateNameEn': instance.corporateNameEn,
      'corporateNameTh': instance.corporateNameTh,
      'displayName': instance.displayName,
      'emailVerificationStatus': instance.emailVerificationStatus,
      'firstNameEn': instance.firstNameEn,
      'firstNameTh': instance.firstNameTh,
      'id': instance.id,
      'kycStatus': instance.kycStatus,
      'lastNameEn': instance.lastNameEn,
      'lastNameTh': instance.lastNameTh,
      'loginLatest':
          const CustomDateTimeConverter().toJson(instance.loginLatest),
      'loginName': instance.loginName,
      'loginPassword': instance.loginPassword,
      'otpStatus': instance.otpStatus,
      'state': instance.state,
      'userProfileImage': instance.userProfileImage,
      'userSubtype': instance.userSubtype,
      'userType': instance.userType,
    };
