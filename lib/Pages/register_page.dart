import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/components/My_Button.dart';
import 'package:fooddelivery/components/My_TextField.dart';
import 'package:lottie/lottie.dart';

class Register_page extends StatefulWidget {
  final void Function()? onTap;

  Register_page({super.key, this.onTap});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  final TextEditingController EmailController = TextEditingController();

  final TextEditingController PassWordController = TextEditingController();

  final TextEditingController ComfirmPassWordController =
      TextEditingController();

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
                "Let's create an account for you",
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
              My_TextField(
                HintText: "Confirm  Pass Word",
                textEditingController: ComfirmPassWordController,
                obscureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              My_Button(
                text: "Sign uP",
                OnTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
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
                      "Login now",
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
