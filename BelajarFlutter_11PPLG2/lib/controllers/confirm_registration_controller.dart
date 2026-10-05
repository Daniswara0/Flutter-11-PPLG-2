import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String email;
  late String jenisKelamin;
  late String nomer;
  late String alamat;
  late String password;
  late String confirmPassword;

  @override
  void onInit() {
    super.onInit();
    final Map<String, dynamic>? arguments = Get.arguments;

    nama = arguments?["nama"] ?? '-';
    email = arguments?["email"] ?? '-';
    jenisKelamin = arguments?["jenisKelamin"] ?? '-';
    nomer = arguments?["nomer"] ?? '-';
    alamat = arguments?["alamat"] ?? '-';
    password = arguments?["password"] ?? '-';
    confirmPassword = arguments?["confirmPassword"] ?? '-';
  }
}