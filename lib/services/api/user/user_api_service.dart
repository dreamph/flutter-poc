import 'dart:convert';

import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/api/api_client.dart';
import 'package:dcf_app/cores/api/api_response.dart';
import 'package:dcf_app/services/api/user/models/user_list_request.dart';
import 'package:dcf_app/services/api/user/models/user_login_request.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'models/user_list_response.dart';
import 'models/user_login_response.dart';

class UserApiService {
  final Logger _logger = serviceLocator<Logger>();
  final ApiClient _client = serviceLocator<ApiClient>();

  final String baseURL = "/dcf/users/api";

  Future<ApiResponse<UserLoginResponse>> login(UserLoginRequest request) async {
    Response response =
        await _client.post(baseURL + "/user/login", request.toJson());

    var jsonResponse = jsonDecode(response.data);
    if (response.statusCode == 200) {
      return ApiResponseBuilder.toSuccess<UserLoginResponse>(
          UserLoginResponse.fromJson(jsonResponse));
    }
    return ApiResponseBuilder.toError<UserLoginResponse>(jsonResponse);
  }

  Future<ApiResponse<UserListResponse>> userList(
      UserListRequest request) async {
    Response response =
        await _client.post(baseURL + "/user/list", request.toJson());
    print(response.data);
    var jsonResponse = jsonDecode(response.data);

    if (response.statusCode == 200) {
      return ApiResponseBuilder.toSuccess<UserListResponse>(
          UserListResponse.fromJson(jsonResponse));
    }
    return ApiResponseBuilder.toError<UserListResponse>(jsonResponse);
  }
}
