import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/components/My_Tab_Bar.dart';
import 'package:fooddelivery/components/My_drawer.dart';
import 'package:fooddelivery/components/My_sliver_app_Bar.dart';
import 'package:fooddelivery/models/Foodes.dart';
import 'package:fooddelivery/models/restorant.dart';
import 'package:provider/provider.dart';

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

  //list for food about categorey
  List<Product> _filterMenuBayCategory(
      ProductCategory category, List<Product> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodINThisCategory(List<Product> fullMenu) {
    return ProductCategory.values.map((category) {
      List<Product> categoryMenu = _filterMenuBayCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(title: Text(categoryMenu[index].name));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const My_drawer(),
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
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodINThisCategory(restaurant.menu)),
          )),
    );
  }
}
