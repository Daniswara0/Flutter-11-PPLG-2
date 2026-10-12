import 'package:get/get.dart';
import '../models/list_makanan_model.dart';

class DetailMakananController extends GetxController {
  late ListMakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    
    if (Get.arguments != null && Get.arguments is ListMakananModel) {
      makanan = Get.arguments;
    } else {
      print("Warning: Data makanan tidak ditemukan di Get.arguments!");
    }
  }
}