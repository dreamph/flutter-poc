import 'package:json_annotation/json_annotation.dart';

part 'user_login_response.g.dart';

@JsonSerializable(nullable: true)
class UserLoginResponse {
  bool status;
  String accessToken;
  String refreshToken;
  String userInfo;
  String newConsent;
  String userProfileImage;
  UserLoginResponse(
      {this.status,
      this.accessToken,
      this.refreshToken,
      this.userInfo,
      this.newConsent,
      });

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginResponseToJson(this);
}
