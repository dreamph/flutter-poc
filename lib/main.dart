import 'package:dcf_app/ui/pages/pages.dart';
import 'package:dcf_app/ui/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      title: 'DCF App',
      home: HomePage(),
    );
  }
}
