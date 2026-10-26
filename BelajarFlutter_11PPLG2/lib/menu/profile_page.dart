import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/components/my_card.dart';
import 'package:login_app/components/my_text.dart';
import '../controllers/confirm_registration_controller.dart';


class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: "Profile"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0), 
        child: ListView(
          children: [ 
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/letty.png'), 
              ),
            ),
            const SizedBox(height: 24), 

            MyCard(
              title: controller.nama, 
              icon: Icons.person_outline, 
            ),
            const SizedBox(height: 10),
 
            MyCard(
              title: controller.email,  
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 10),

            MyCard(
              title: controller.nomer, 
              icon: Icons.phone_outlined,
            ),
            const SizedBox(height: 10),

            MyCard(
              title: controller.agama, 
              icon: Icons.mosque_outlined,
            ),
            const SizedBox(height: 10),
 
            MyCard(
              title: controller.jenisKelamin, 
              icon: Icons.wc_outlined,
            ),
            const SizedBox(height: 10),
      
            MyCard(
              title: controller.alamat, 
              icon: Icons.location_on_outlined,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}