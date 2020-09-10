import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/services/api/user/user_api_service.dart';

import 'base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  final UserApiService _userApiService = serviceLocator<UserApiService>();

  void onLoginEvent() async {
    notifyListeners();
  }
}
