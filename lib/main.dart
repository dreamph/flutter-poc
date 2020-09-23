import 'package:dcf_app/ui/pages/pages.dart';
import 'package:dcf_app/ui/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configs/env.dart';
import 'configs/service_locator.dart';

void main() {
  Env.init();
  setupServiceLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      title: 'DCF App',
      home: LoginView(),
    );
  }
}
