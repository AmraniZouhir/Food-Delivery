import 'package:flutter/material.dart';
import 'package:fooddelivery/Components/My_TextField.dart';
import 'package:fooddelivery/Pages/Home_Page.dart';
import 'package:fooddelivery/components/My_Button.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController EmailController = TextEditingController();

  final TextEditingController PassWordController = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home_Page(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                'assets/lottie/lock_open.json',
                width: 250,
              ),
              Text(
                'Food Delivery App',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              My_TextField(
                HintText: "Email",
                textEditingController: EmailController,
                obscureText: false,
              ),
              SizedBox(
                height: 25,
              ),
              My_TextField(
                HintText: "Pass Word",
                textEditingController: PassWordController,
                obscureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              My_Button(
                text: "Sign In",
                OnTap: () {
                  login();
                },
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
