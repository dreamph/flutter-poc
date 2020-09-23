import 'package:dcf_app/configs/service_locator.dart';

import 'package:dcf_app/services/app/user_login_service.dart';
import 'package:dcf_app/services/app_service.dart';

import '../base_controller.dart';

class ChangePasswordController extends BaseController {
  final AppService _appService = serviceLocator<AppService>();

  @override
  void init() async {}

  @override
  void ready() async {}

  void onChangePassword() async {
    update();
  }

  @override
  void close() {}
}
