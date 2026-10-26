import 'package:flutter/material.dart';
import 'package:login_app/components/my_text.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyText(text: "Ini History"),
      ),
    );
  }
}