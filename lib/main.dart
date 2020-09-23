import 'package:dcf_app/ui/pages/pages.dart';
import 'package:dcf_app/ui/routes.dart';
import 'package:dcf_app/ui/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configs/service_locator.dart';
import 'message.dart';

void main() {
  setupServiceLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DCF App',
      initialRoute: LoginView.routeName,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      translations: Messages(), // your translations
      locale: Locale('th', 'TH'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'US'),
      //home: LoginView(),
    );
  }
}
