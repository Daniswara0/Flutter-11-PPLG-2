import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../components/my_textfield.dart';
import '../components/my_button.dart';
import '../components/my_text.dart';
import '../components/my_dropdown.dart';
import '../components/my_switch.dart';
import '../controllers/registration_controller.dart';
import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'Halaman Registrasi'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              hintText: 'Masukkan Nama Anda',
              controller: controller.txtUsername,
            ),
            const SizedBox(height: 12),

            MyTextField(
              hintText: 'Masukkan Email Anda',
              controller: controller.txtEmail,
            ),
            const SizedBox(height: 12),

            Obx(
              () => MySwitchTile(
                title: 'Jenis Kelamin: ${controller.isLakiLaki.value ? "Laki-laki" : "Perempuan"}',
                value: controller.isLakiLaki.value,
                onChanged: (val) => controller.isLakiLaki.value = val,
              ),
            ),
            const SizedBox(height: 12),

            Obx(
              () => MyDropdown<String>(
                value: controller.selectedAgama.value,
                hintText: 'Pilih Agama Anda',
                items: controller.listAgama
                    .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        ))
                    .toList(),
                onChanged: (val) => controller.selectedAgama.value = val,
              ),
            ),
            const SizedBox(height: 12),

            MyTextField(
              hintText: 'Masukkan Nomor Telepon Anda',
              controller: controller.nomer,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 12),

            MyTextField(
              hintText: 'Masukkan Alamat Anda',
              controller: controller.alamat,
            ),
            const SizedBox(height: 12),

            MyTextField(
              hintText: 'Masukkan Password Anda',
              controller: controller.password,
              obscureText: true,
            ),
            const SizedBox(height: 12),

            MyTextField(
              hintText: 'Konfirmasi Password Anda',
              controller: controller.confirmPassword,
              obscureText: true,
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: 'Daftar',
                  onPressed: () {
                    Get.toNamed(
                      Routes.mainMenu,
                      arguments: {
                        'nama': controller.txtUsername.text,
                        'email': controller.txtEmail.text,
                        'jenisKelamin': controller.isLakiLaki.value ? 'Laki-laki' : 'Perempuan',
                        'agama': controller.selectedAgama.value ?? '-',
                        'nomer': controller.nomer.text,
                        'alamat': controller.alamat.text,
                        'password': controller.password.text,
                        'confirmPassword': controller.confirmPassword.text,
                      },
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 159, 226, 123),
                  textColor: Colors.white,
                ),
                MyButton(
                  text: 'Clear',
                  onPressed: () => controller.clearForm(),
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