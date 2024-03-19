import 'package:flutter/material.dart';

class My_TextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String HintText;
  final bool obscureText;
  const My_TextField(
      {super.key,
      required this.textEditingController,
      required this.HintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: textEditingController,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.tertiary)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary)),
            hintText: HintText,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
    );
  }
}
