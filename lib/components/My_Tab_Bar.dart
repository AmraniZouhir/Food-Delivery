import 'package:flutter/material.dart';
import 'package:fooddelivery/models/Foodes.dart';

// class My_Tab_Bar extends StatelessWidget {
//   final TabController tabController;
//   const My_Tab_Bar({super.key, required this.tabController});

//   List<Tab> _buldCategoryTabs() {
//     return ProductCategory.values.map((categor) {
//       return Tab(
//         text: categor.toString().split('.').last,

//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TabBar(controller: tabController, tabs: _buldCategoryTabs()),
//     );
//   }
// }

class My_Tab_Bar extends StatelessWidget {
  final TabController tabController;
  const My_Tab_Bar({Key? key, required this.tabController});

  List<Widget> _buildCategoryTabs(BuildContext context) {
    return ProductCategory.values.map((categor) {
      return Container(
        child: Tab(
          text: categor.toString().split('.').last,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(context),
        // Adjust indicator color and size as needed
        indicatorColor: Theme.of(context).canvasColor,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
