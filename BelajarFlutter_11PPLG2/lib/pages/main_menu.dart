import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/controllers/main_menu_controller.dart';
import '../menu/history_page.dart';
import '../menu/home_page.dart';
import '../menu/profile_page.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      body: IndexedStack(
        children: controller.listPages,
        index: controller.selectedIndex.value,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.history_outlined),
          label: "History"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: "Profile" 
        )
      ]),
    ));
  }
}