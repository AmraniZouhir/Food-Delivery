import 'package:flutter/material.dart';
import 'package:fooddelivery/Pages/login_page.dart';
import 'package:fooddelivery/Pages/register_page.dart';

class login_or_register extends StatefulWidget {
  const login_or_register({super.key});

  @override
  State<login_or_register> createState() => _login_or_registerState();
}

class _login_or_registerState extends State<login_or_register> {
  // initially show login page
  bool showLoginPage = true;
// toggle between login and regester page

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
      return Register_page(onTap: togglePages);
    }
  }
}
