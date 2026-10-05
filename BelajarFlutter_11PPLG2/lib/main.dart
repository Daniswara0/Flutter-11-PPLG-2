import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Praktikum 11 PPLG 2',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}