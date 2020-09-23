import 'dart:convert';

import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/constants/shared_preferences_keys.dart';
import 'package:dcf_app/models/user_login_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api/project/project_api_service.dart';
import 'api/user/user_api_service.dart';
import 'app/user_login_service.dart';

class AppService {
  //app
  final UserLoginService _userLoginService = serviceLocator<UserLoginService>();

  //api
  final UserApiService _userApiService = serviceLocator<UserApiService>();
  final ProjectApiService _projectApiService = serviceLocator<ProjectApiService>();

  //generate getter only
  UserApiService get userApiService => _userApiService;

  ProjectApiService get projectApiService => _projectApiService;

  UserLoginService get userLoginService => _userLoginService;
}