import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/components/my_textfield.dart';
import 'package:login_app/components/my_button.dart';
import 'package:get/get.dart';

import 'controllers/calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});
  final controller = Get.put(CalculatorController());
  final TextEditingController txtAngka1 = TextEditingController();
  final TextEditingController txtAngka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            MyTextField(
              hintText: 'Input Number One',
              controller: txtAngka1,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 16),

            MyTextField(
              hintText: 'Input Number Two',
              controller: txtAngka2,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '+',
                  onPressed: () {
                    controller.tambah(
                      double.parse(txtAngka1.text), 
                      double.parse(txtAngka2.text)
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 0, 213, 255),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: '-',
                  onPressed: () {
                    controller.kurang(
                      double.parse(txtAngka1.text),
                      double.parse(txtAngka2.text)
                    );
                    },
                  backgroundColor: const Color.fromARGB(255, 243, 70, 96),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: 'x',
                  onPressed: () {
                    controller.kali(
                      double.parse(txtAngka1.text),
                      double.parse(txtAngka2.text)
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 130, 201, 133),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: ':',
                  onPressed: () {
                    controller.bagi(
                      double.parse(txtAngka1.text),
                      double.parse(txtAngka2.text)
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 255, 200, 0),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 24),

            Obx(() => Text(
              "Hasil: ${controller.hasilHitung.value}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}