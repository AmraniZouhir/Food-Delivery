import 'package:flutter/material.dart';
import 'package:fooddelivery/Pages/Settings_Page.dart';
import 'package:fooddelivery/components/My_drawerTile.dart';
import 'package:lottie/lottie.dart';

class My_drawer extends StatelessWidget {
  const My_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.inversePrimary,
                BlendMode.srcIn,
              ),
              child: Lottie.asset(
                'assets/lottie/icnonApp.json',
                width: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          My_drawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          My_drawerTile(
              text: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              }),
          const Spacer(),
          const My_drawerTile(
            text: 'L O G O U T ',
            icon: Icons.logout,
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
