import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final txtUsername = TextEditingController();
  final txtEmail = TextEditingController();
  final nomer = TextEditingController();
  final alamat = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  var isLakiLaki = true.obs;
  var selectedAgama = RxnString();

  final List<String> listAgama = [
    'Islam',
    'Kristen',
    'Katolik',
    'Hindu',
    'Buddha',
    'Khonghucu',
  ];

  void clearForm() {
    txtUsername.clear();
    txtEmail.clear();
    nomer.clear();
    alamat.clear();
    password.clear();
    confirmPassword.clear();
    isLakiLaki.value = true;
    selectedAgama.value = null;
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtEmail.dispose();
    nomer.dispose();
    alamat.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.onClose();
  }
}