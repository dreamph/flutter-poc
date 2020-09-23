import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/api/api_response.dart';
import 'package:dcf_app/services/api/api.dart';
import 'package:dcf_app/services/api/model/limit.dart';
import 'package:dcf_app/services/api/user/models/user_list_request.dart';
import 'package:dcf_app/services/api/user/models/user_list_response.dart';
import 'package:dcf_app/services/api/user/models/user_login_request.dart';
import 'package:dcf_app/services/api/user/models/user_login_response.dart';
import 'package:dcf_app/ui/pages/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../base_controller.dart';

class LoginController extends BaseController {
  final ApiService apiService = serviceLocator<ApiService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void init() async {
    //emailController = TextEditingController();
    //passwordController = TextEditingController();
  }

  void onLoginEvent() async {


    ApiResponse<UserListResponse> userListResponse = await apiService.userApiService
        .userList(UserListRequest(limit: Limit(pageNumber: 1, pageSize: 2)));
   print(userListResponse.success);
    /*
    ApiResponse<UserLoginResponse> userLoginResponse = await apiService.userApiService
        .login(UserLoginRequest(emailController.text, passwordController.text));
    if (userLoginResponse.success) {
      print(userLoginResponse.content.toJson());
    } else {
      print(userLoginResponse.error.toJson());
    }

     */

    update();
    Get.to(HomeView());
  }

  @override
  void close() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void ready() {
  }
}
