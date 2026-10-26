import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/detail_list_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makanan.namaMakanan),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Center(
                      child: Image.network(
                        controller.makanan.gambarMakanan,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 180,
                          height: 180,
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                          ),
                        ),
                      ),
                    ), const SizedBox(height: 16),
                    const SizedBox(height: 16), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            controller.makanan.namaMakanan,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 20),
                            const SizedBox(width: 4),
                            Text(
                              controller.makanan.ratingMakanan,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8), 
                    Text(
                      'Rp ${controller.makanan.hargaMakanan}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 12), 
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Deskripsi Menu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      controller.makanan.deskripsiMakanan, 
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.4,  
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}