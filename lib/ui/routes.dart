import 'package:flutter/material.dart';

import 'pages/pages.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      HomePage.routeName: (_) => HomePage(),
      LoginPage.routeName: (_) => LoginPage(),
    };
  }
}
