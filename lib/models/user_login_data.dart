import 'package:json_annotation/json_annotation.dart';
import 'package:dcf_app/cores/converts/json_converter.dart';

part 'user_login_data.g.dart';

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserLoginData {
  String id;
  bool kycStatus;
  String lastNameEn;
  String lastNameTh;
  String loginLatest;
  String loginName;
  String loginPassword;
  bool otpStatus;
  String state;
  String userProfileImage;
  String userSubtype;
  String userType;

  String accessToken;
  String refreshToken;

  UserLoginData({
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
      this.userType,
      this.accessToken,
      this.refreshToken});

  factory UserLoginData.fromJson(Map<String, dynamic> json) => _$UserLoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginDataToJson(this);
}