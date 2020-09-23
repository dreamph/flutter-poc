import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/api/api_response.dart';
import 'package:dcf_app/models/user_login_data.dart';
import 'package:dcf_app/services/api/user/models/user_login_request.dart';
import 'package:dcf_app/services/api/user/models/user_login_response.dart';
import 'package:dcf_app/services/app_service.dart';
import 'package:dcf_app/ui/pages/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../base_controller.dart';

class LoginController extends BaseController {
  final AppService _appService = serviceLocator<AppService>();

  TextEditingController emailController;// = TextEditingController();
  TextEditingController passwordController;// = TextEditingController();

  @override
  void init() async {
    emailController = TextEditingController(text: "looknam0833@gmail.com");
    passwordController = TextEditingController(text:"Nkumjron89");
  }

  @override
  void ready() async {}

  void onLoginEvent() async {
    /*
    ApiResponse<UserListResponse> userListResponse = await apiService
        .userApiService
        .userList(UserListRequest(limit: Limit(pageNumber: 1, pageSize: 2)));
    print(userListResponse.success);

     */

    ApiResponse<UserLoginResponse> userLoginResponse =
        await _appService.userApiService.login(UserLoginRequest(
            username: emailController.text, password: passwordController.text));
    if (userLoginResponse.success && userLoginResponse.content.status) {
      UserLoginResponse user = userLoginResponse.content;
      _appService.userLoginService.setUserLogin(UserLoginData(
          id: user.userInfo.id,
          accessToken: user.accessToken,
          refreshToken: user.refreshToken));
      Get.to(HomeView());
    }

    update();
  }

  @override
  void close() {
    emailController.dispose();
    passwordController.dispose();
  }
}
