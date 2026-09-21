import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/components/my_textfield.dart';
import 'package:login_app/components/my_button.dart';
import 'package:login_app/components/my_text.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController txtAngka1 = TextEditingController();
  final TextEditingController txtAngka2 = TextEditingController();
  String hasil = "0";

  @override
  void dispose() {
    txtAngka1.dispose();
    txtAngka2.dispose();
    super.dispose();
  }


  void hitung(String operasi) {
    double? angka1 = double.tryParse(txtAngka1.text);
    double? angka2 = double.tryParse(txtAngka2.text);

    if (angka1 == null || angka2 == null) {
      setState(() {
        hasil = "Input tidak valid";
      });
      return;
    }

    setState(() {
      switch (operasi) {
        case '+':
          hasil = (angka1 + angka2).toString();
          break;
        case '-':
          hasil = (angka1 - angka2).toString();
          break;
        case 'x':
          hasil = (angka1 * angka2).toString();
          break;
        case ':':
          if (angka2 == 0) {
            hasil = "Tidak bisa dibagi 0";
          } else {
            hasil = (angka1 / angka2).toString();
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
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

            // Tombol Operasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '+',
                  onPressed: () => hitung('+'),
                  backgroundColor: const Color.fromARGB(255, 0, 213, 255),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: '-',
                  onPressed: () => hitung('-'),
                  backgroundColor: const Color.fromARGB(255, 243, 70, 96),
                  textColor: Colors.white,
                ),
                MyButton(text: 'x', 
                onPressed: () => hitung('x'),
                backgroundColor: const Color.fromARGB(255, 130, 201, 133),
                textColor: Colors.white,),
                MyButton(
                  text: ':',
                  onPressed: () => hitung(':'),
                  backgroundColor: const Color.fromARGB(255, 255, 200, 0),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Tampilan Hasil
            MyText(
              text: "Hasil: " + hasil,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}