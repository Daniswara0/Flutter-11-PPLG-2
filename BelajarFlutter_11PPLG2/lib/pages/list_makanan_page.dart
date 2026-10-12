import 'package:flutter/material.dart';
import '../components/my_text.dart';
import '../controllers/list_makanan_controller.dart';
import 'package:get/get.dart';
import '../components/my_card.dart';
import 'detail_list_makanan_page.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'List Makanan'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) { //ini adalah contoh penggunaan ListView.builder untuk menampilkan daftar makanan
          final makanan = controller.dataMakanan[index];
            return MyCard(
              title: makanan.namaMakanan,
              subtitle: makanan.hargaMakanan,
              imageUrl: makanan.gambarMakanan,
              onTap: () {
                Get.to(() => DetailMakananPage(), arguments: makanan);
              },
            );
          },
        ),
      )
    );
  }
}