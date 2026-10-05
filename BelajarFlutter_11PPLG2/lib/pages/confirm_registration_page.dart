import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_button.dart';
import '../components/my_text.dart';
import '../controllers/confirm_registration_controller.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(
                  color: Color(0xFFE2E8F0),
                  width: 1.2,
                ),
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
                    const Divider(height: 24, thickness: 1),
                    MyText(text: 'Nama Lengkap: ${controller.nama}'),
                    const SizedBox(height: 10),
                    MyText(text: 'Email: ${controller.email}'),
                    const SizedBox(height: 10),
                    MyText(text: 'Jenis Kelamin: ${controller.jenisKelamin}'),
                    const SizedBox(height: 10),
                    MyText(text: 'Agama: ${controller.agama}'),
                    const SizedBox(height: 10),
                    MyText(text: 'Nomor Telepon: ${controller.nomer}'),
                    const SizedBox(height: 10),
                    MyText(text: 'Alamat: ${controller.alamat}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            MyButton(
              text: 'Kembali Ke Registration',
              onPressed: () => Get.back(),
              backgroundColor: const Color(0xFF6366F1),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}