import 'package:dcf_app/cores/converts/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_login_request.g.dart';

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserLoginRequest {
  String username;
  String password;

  factory UserLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$UserLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginRequestToJson(this);


  UserLoginRequest({this.username, this.password});

}

