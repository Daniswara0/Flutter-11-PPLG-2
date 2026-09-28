import 'package:get/state_manager.dart';
import 'package:get/get.dart';


class CalculatorController extends GetxController{
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    print("Hasil Penjumlahan: $hasilTambah");
    hasilHitung.value = hasilTambah;
    Get.snackbar("hasil tambah", "Hasil Penjumlahan: $hasilTambah");
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    print("Hasil Pengurangan: $hasilKurang");
    hasilHitung.value = hasilKurang;
    Get.snackbar("hasil kurang", "Hasil Pengurangan: $hasilKurang");
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    print("Hasil Perkalian: $hasilKali");
    hasilHitung.value = hasilKali;
    Get.snackbar("hasil kali", "Hasil Perkalian: $hasilKali");
  }

  void bagi(double angka1, double angka2) {
    if (angka2 != 0) {
      double hasilBagi = angka1 / angka2;
      print("Hasil Pembagian: $hasilBagi");
      hasilHitung.value = hasilBagi;
      Get.snackbar("hasil bagi", "Hasil Pembagian: $hasilBagi");
    } else {
      print("Error: Pembagian dengan nol tidak diperbolehkan.");
      Get.snackbar("error", "Error: Pembagian dengan nol tidak diperbolehkan.");
    }
  }
}