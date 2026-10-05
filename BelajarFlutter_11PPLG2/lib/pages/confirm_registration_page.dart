import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_text.dart';
import '../controllers/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const MyText(text: 'Halaman Konfirmasi Registrasi'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Detail Registrasi',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 12),
            MyText(text: 'Nama: ${controller.nama}'),
            MyText(text: 'Email: ${controller.email}'),
            MyText(text: 'Jenis Kelamin: ${controller.jenisKelamin}'),
            MyText(text: 'Nomor Telepon: ${controller.nomer}'),
            MyText(text: 'Alamat: ${controller.alamat}'),
            MyText(text: 'Password: ${controller.password}'),
            MyText(text: 'Konfirmasi Password: ${controller.confirmPassword}'),
          ],
        ),
      ),
    );
  }
}