import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_button.dart';
import '../components/my_text.dart';
import '../controllers/confirm_registration_controller.dart';
import '../routes.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'Konfirmasi Registrasi'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xFFE2E8F0), width: 1.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      text: 'Detail Informasi Akun',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    MyText(text: "Nama Lengkap: " + controller.nama),
                    const SizedBox(height: 10),
                    MyText(text: "Email: " + controller.email),
                    const SizedBox(height: 10),
                    MyText(text: "Jenis Kelamin: " + controller.jenisKelamin),
                    const SizedBox(height: 10),
                    MyText(text: "Agama: " + controller.agama),
                    const SizedBox(height: 10),
                    MyText(text: "Nomor Telepon: " + controller.nomer),
                    const SizedBox(height: 10),
                    MyText(text: "Alamat: " + controller.alamat),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            MyButton(
              text: 'Kembali Ke Registration',
              onPressed: () => Get.back(),
              backgroundColor: const Color.fromARGB(255, 157, 157, 157),
              textColor: Colors.white,
            ),
            const SizedBox(height: 12),

            MyButton(
              text: "Lihat Menu Makanan",
              onPressed: () =>
                  Get.offNamed(Routes.listMakanan),
              backgroundColor: const Color.fromARGB(255, 255, 183, 82),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
