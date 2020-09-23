import 'package:dcf_app/cores/utils/validators.dart';
import 'package:dcf_app/ui/pages/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends StatefulWidget {
  static String routeName = "/login";

  LoginView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController ctrl = Get.put(LoginController());
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
          autovalidate: true,
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200.0,
                      width: 200.0,
                      child: SvgPicture.asset(
                        "assets/images/logo.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    _buildEmailField(),
                    SizedBox(height: 10.0),
                    _buildPasswordField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildLoginButton(context),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildRegisterLabel()
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildRegisterLabel() {
    return InkWell(
      onTap: () {
        ctrl.onRegisterClickEvent();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            //_formKey.currentState.save();
            ctrl.onLoginClickEvent();
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: ctrl.passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.1))
      ),
      validator: ValidatorUtils.tryString("Please enter Password"),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: ctrl.emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        //border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.1))
      ),
      validator: ValidatorUtils.tryEmail("Please enter Email"),
    );
  }
}
