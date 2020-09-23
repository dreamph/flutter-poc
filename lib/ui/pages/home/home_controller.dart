import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/services/app_service.dart';

import '../base_controller.dart';

class HomeController extends BaseController {
  final AppService _appService = serviceLocator<AppService>();

  @override
  void init() {
  }

  @override
  void ready() {
  }

  @override
  void close() {
  }

}
