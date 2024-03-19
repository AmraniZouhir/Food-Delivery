import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class My_Button extends StatelessWidget {
  final Function()? OnTab;
  final String text;
  const My_Button({super.key, this.OnTab, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTab,
      child: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.secondary),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          )),
    );
  }
}
