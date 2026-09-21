import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Diperlukan untuk FilteringTextInputFormatter

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _numberoneController = TextEditingController();
  final TextEditingController _numbertwoController = TextEditingController();

  @override
  void dispose() {
    _numberoneController.dispose();
    _numbertwoController.dispose();
    super.dispose();
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
            TextField(
              controller: _numberoneController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                labelText: 'Input Number One',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: _numbertwoController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                labelText: 'Input Number Two',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(':'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}