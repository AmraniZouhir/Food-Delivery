import 'package:flutter/material.dart';
import 'package:fooddelivery/components/My_drawer.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
          ),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: My_drawer());
  }
}
