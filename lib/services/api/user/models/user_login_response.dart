import 'package:dcf_app/cores/converts/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_login_response.g.dart';

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserLoginResponse {
  String accessToken;
  String refreshToken;
  bool status;
  UserInfo userInfo;
  String userProfileImage;

  UserLoginResponse(
      {this.accessToken,
      this.refreshToken,
      this.status,
      this.userInfo,
      this.userProfileImage});

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginResponseToJson(this);
}

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserInfo {
  String corporateEmail;
  String corporateNameEn;
  String corporateNameTh;
  String displayName;
  bool emailVerificationStatus;
  String firstNameEn;
  String firstNameTh;
  String id;
  bool kycStatus;
  String lastNameEn;
  String lastNameTh;
  DateTime loginLatest;
  String loginName;
  String loginPassword;
  bool otpStatus;
  String state;
  String userProfileImage;
  String userSubtype;
  String userType;

  UserInfo(
      {this.corporateEmail,
      this.corporateNameEn,
      this.corporateNameTh,
      this.displayName,
      this.emailVerificationStatus,
      this.firstNameEn,
      this.firstNameTh,
      this.id,
      this.kycStatus,
      this.lastNameEn,
      this.lastNameTh,
      this.loginLatest,
      this.loginName,
      this.loginPassword,
      this.otpStatus,
      this.state,
      this.userProfileImage,
      this.userSubtype,
      this.userType});

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
