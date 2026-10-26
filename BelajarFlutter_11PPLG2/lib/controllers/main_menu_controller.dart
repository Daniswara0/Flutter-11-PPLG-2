import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/menu/history_page.dart';
import 'package:login_app/menu/home_page.dart';
import 'package:login_app/menu/profile_page.dart';

class MainMenuController extends GetxController{

  final RxInt selectedIndex = 0.obs ;

  void changePage(int index){
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

}