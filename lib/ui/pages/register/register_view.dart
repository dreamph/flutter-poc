import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterView extends StatefulWidget {
  static String routeName = "/register";

  RegisterView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final RegisterController ctrl = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Form(
          key: _formKey,
          autovalidate : true,
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),

                 */
                   // SizedBox(height: 45.0),
                   // emailField,
                   // SizedBox(height: 25.0),
                   // passwordField,
                   // SizedBox(
                   //   height: 35.0,
                   // ),
                   // loginButon,
                   /// SizedBox(
                   //   height: 15.0,
                   // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
