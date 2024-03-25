import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/login_page.dart';
import 'package:food_delivery_app/pages/register_page.dart';

class LoginOrRegisterState extends StatefulWidget {
  const LoginOrRegisterState({super.key});

  @override
  State<LoginOrRegisterState> createState() => _LoginOrRegisterStateState();
}

class _LoginOrRegisterStateState extends State<LoginOrRegisterState> {
  //initially show the login page
  bool showLoginPage = true;

  // toggle between login & register

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
