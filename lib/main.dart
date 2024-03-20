import 'package:flutter/material.dart';
import 'package:fooddelivery/Pages/splashScreen_page.dart';
import 'package:fooddelivery/Theme/theme_provider.dart';
import 'package:fooddelivery/auth/login_or_register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const splashScreen_page(),
    );
  }
}
