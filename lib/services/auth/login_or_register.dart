import 'package:chat_app/screen/login_page.dart';
import 'package:chat_app/screen/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //iinitially show the login screen
  bool _showLogin = true;

  //toggle between login and register page
  void togglePages(){
    setState(() {
      _showLogin = !_showLogin;

    });
  }
  @override
  Widget build(BuildContext context) {
    if(_showLogin){
      return LoginPage(onTap: togglePages);
    }else {
      return RegisterPage(onTap: togglePages);
    }
  }
}