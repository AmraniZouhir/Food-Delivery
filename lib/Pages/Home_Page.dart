import 'package:flutter/material.dart';
import 'package:fooddelivery/components/My_Tab_Bar.dart';
import 'package:fooddelivery/components/My_drawer.dart';
import 'package:fooddelivery/components/My_sliver_app_Bar.dart';
import 'package:fooddelivery/models/Foodes.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: ProductCategory.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: My_drawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          My_sliver_app_Bar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  height: 0,
                  // indent: 10,
                  // endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                )
              ],
            ),
            titele: My_Tab_Bar(
              tabController: _tabController,
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            Text('First Tab'),
            Text('First Tab'),
            Text('First Tab'),
            Text('First Tab'),
            Text('Second Tab')
          ],
        ),
      ),
    );
  }
}
