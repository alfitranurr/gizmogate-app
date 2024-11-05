import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:get/get.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: YourFirstScreen(),
            item: ItemConfig(
              icon: Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const sh(),
            item: ItemConfig(
              icon: Icon(Icons.message),
              title: "Messages",
            ),
          ),
          PersistentTabConfig(
            item: ItemConfig(
              icon: Icon(Icons.settings),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
