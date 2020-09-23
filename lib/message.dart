import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'app.title': 'DCF App',
      'login.page.title': 'Login',
    },
    'th_TH': {
      'app.title': 'DCF App',
      'login.page.title': 'เข้าสู่ระบบ',
    }
  };
}