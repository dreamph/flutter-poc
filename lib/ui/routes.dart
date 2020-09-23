import 'package:get/get.dart';

import 'pages/pages.dart';

class Routes {
  static final routes = [
    GetPage(
      name: HomeView.routeName,
      page: () => HomeView(),
    ),
    GetPage(
      name: LoginView.routeName,
      page: () => LoginView(),
    )
  ];
}