import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:login_app/components/my_textfield.dart';
import 'package:login_app/components/my_button.dart';
import '../components/my_text.dart';
import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController jenisKelamin = TextEditingController();
  final TextEditingController nomer = TextEditingController();
  final TextEditingController alamat = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const MyText(text: 'Halaman Registrasi'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              hintText: 'Masukkan Nama Anda',
              controller: txtUsername,
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Masukkan Email Anda', 
              controller: txtEmail,
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Masukkan Jenis Kelamin Anda', 
              controller: jenisKelamin,
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Masukkan Nomor Telepon Anda', 
              controller: nomer,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Masukkan Alamat Anda', 
              controller: alamat,
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Masukkan Password Anda', 
              controller: password,
              obscureText: true,
            ),
            const SizedBox(height: 12),
            MyTextField(
              hintText: 'Konfirmasi Password Anda', 
              controller: confirmPassword,
              obscureText: true,
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: 'Daftar',
                  onPressed: () { 
                    Get.toNamed('/confirm_registration',
                      arguments: {
                        'nama': txtUsername.text,
                        'email': txtEmail.text,
                        'jenisKelamin': jenisKelamin.text,
                        'nomer': nomer.text,
                        'alamat': alamat.text,
                        'password': password.text,
                        'confirmPassword': confirmPassword.text,
                      },
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 159, 226, 123),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: 'Clear',
                  onPressed: () {
                    // Handle cancel logic here
                  },
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}