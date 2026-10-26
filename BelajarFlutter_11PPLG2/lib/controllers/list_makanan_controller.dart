import 'package:get/get.dart';
import 'package:login_app/models/list_makanan_model.dart';

class ListMakananController extends GetxController{

  List<ListMakananModel> dataMakanan = [
    ListMakananModel(namaMakanan: "Bakso", hargaMakanan: "18.000", deskripsiMakanan: "Bakso sapi dengan kuah yang lezat", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10", ratingMakanan: "4.5"),
    ListMakananModel(namaMakanan: "Nasi Goreng", hargaMakanan: "15.000", deskripsiMakanan: "Nasi goreng dengan bumbu spesial", gambarMakanan: "https://dcostseafood.id/wp-content/uploads/2023/04/Nasi-Goreng-telor.jpg", ratingMakanan: "4.2"),
    ListMakananModel(namaMakanan: "Mie Ayam", hargaMakanan: "12.000", deskripsiMakanan: "Mie ayam dengan kuah kaldu yang gurih", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7cGgCKNOYn9nuwL6mACELemKUsA2WZTajqcPtGNA3TA-v0ZWP1QNleCp7&s=10", ratingMakanan: "4.0"),
    ListMakananModel(namaMakanan: "Sate Ayam", hargaMakanan: "20.000", deskripsiMakanan: "Sate ayam dengan bumbu kacang yang lezat", gambarMakanan: "https://asset.kompas.com/crops/BJdOTeUCdwHWS6ImI9qDnf3s8nI=/0x0:1000x667/1200x800/data/photo/2023/12/19/6580e31d4d33e.jpeg", ratingMakanan: "4.7"),
    ListMakananModel(namaMakanan: "Rendang", hargaMakanan: "25.000", deskripsiMakanan: "Rendang daging sapi dengan bumbu rempah yang kaya", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfQZ2LyYsGJf8Aw4Ebd3TKbURx7VwkM4cbVokn1Km4HDWamaxYhGv98QY&s=10", ratingMakanan: "4.8"),
    ListMakananModel(namaMakanan: "Ayam Goreng", hargaMakanan: "18.000", deskripsiMakanan: "Ayam goreng dengan bumbu khas Indonesia", gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/ayam-goreng-lengkuas.jpg", ratingMakanan: "4.3"),
    ListMakananModel(namaMakanan: "Soto Ayam", hargaMakanan: "15.000", deskripsiMakanan: "Soto ayam dengan kuah bening yang segar", gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg", ratingMakanan: "4.1"),
    ListMakananModel(namaMakanan: "Sop Kaki Kambing", hargaMakanan: "30.000", deskripsiMakanan: "Sop kaki kambing dengan bumbu rempah yang kaya", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6z945ApMxkwr4xYbk2ZBQwFTRhcsHh3UlqhJ5_J2OQ4_F5uS0SMA032I&s=10", ratingMakanan: "4.6"),
  ].obs;
} 
