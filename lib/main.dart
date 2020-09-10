import 'package:dcf_app/ui/pages/pages.dart';
import 'package:dcf_app/ui/pages/route.dart';
import 'package:dcf_app/ui/themes/theme.dart';
import 'package:dcf_app/ui/widgets/custom_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name.contains('home')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => HomePage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => LoginPage());
        }
      },
      initialRoute: HomePage.routeName,
    );
  }
}
