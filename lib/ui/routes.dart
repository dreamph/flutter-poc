import 'package:get/get.dart';

import 'pages/pages.dart';

//https://github.com/jonataslaw/getx/blob/master/documentation/en_US/route_management.md#navigation-with-named-routes
class Routes {
  static final routes = [
    GetPage(
      name: HomeView.routeName,
      page: () => HomeView(),
    ),
    GetPage(
      name: LoginView.routeName,
      page: () => LoginView(),
    ),
    GetPage(
      name: ChangePasswordView.routeName,
      page: () => ChangePasswordView(),
    ),
    GetPage(
      name: RegisterView.routeName,
      page: () => RegisterView(),
    )
  ];
}