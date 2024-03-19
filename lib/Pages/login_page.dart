import 'package:flutter/material.dart';
import 'package:fooddelivery/Components/My_TextField.dart';
import 'package:fooddelivery/components/My_Button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PassWordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              color: Theme.of(context).colorScheme.primary,
              size: 100,
            ),
            SizedBox(
              height: 25,
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
              OnTab: () {},
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
                Text(
                  "Register now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
