import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/services/api/api.dart';

import '../base_controller.dart';

class HomeController extends BaseController {
  final ApiService apiService = serviceLocator<ApiService>();

  @override
  void close() {
  }

  @override
  void init() {


  }

  @override
  void ready() {
    // TODO: implement ready
  }



}
