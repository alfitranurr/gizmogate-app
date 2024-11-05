import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizmogate/app/modules/shope/views/shope_view.dart';
import '../../home/views/home_view.dart';
import '../../transaksi/views/transaksi_view.dart';
import '../controllers/navbar_controller.dart'; // Import NavbarController

class NavbarView extends StatelessWidget {
  const NavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.put(NavbarController());

    return Obx(() {
      return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shope',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Transaksi',
          ),
        ],
        currentIndex: controller.currentIndex.value, // Menggunakan currentIndex dari controller
        selectedItemColor: Colors.blue,
        onTap: (index) {
          controller.currentIndex.value = index; // Update currentIndex
          switch (index) {
            case 0:
              Get.off(() => HomeView());
              break;
            case 1:
              Get.off(() => ShopeView());
              break;
            case 2:
              Get.off(() => TransaksiView());
              break;
          }
        },
      );
    });
  }
}
