import 'dart:convert';

import 'package:dcf_app/cores/constants/shared_preferences_keys.dart';
import 'package:dcf_app/models/user_login_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLoginService {

  void setUserLogin(UserLoginData userLoginData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map jsonMap = userLoginData.toJson();
    String json = jsonEncode(UserLoginData.fromJson(jsonMap));
    prefs.setString(SharedPreferencesKeys.USER_LOGIN, json);
  }

  Future<UserLoginData> getUserLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String json = prefs.get(SharedPreferencesKeys.USER_LOGIN);
    if(json != null) {
      Map userMap = jsonDecode(json);
      UserLoginData user = UserLoginData.fromJson(userMap);
      return user;
    }
    return null;
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String json = prefs.get(SharedPreferencesKeys.USER_LOGIN);
    return json?.isNotEmpty;
  }

}