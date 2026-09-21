import 'package:flutter/material.dart';
import 'components/My_TextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Ditambahkan 'final' sebagai praktik pembuatan controller yang baik
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login System'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. 'const' dihapus dari Text dan menggunakan interpolation $statusLogin
            Text(
              "Selamat Datang" + statusLogin,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Input Email / Username
            MyTextField(
              hintText: "Masukkan username Anda",
              controller: txtUsername,
            ),
            const SizedBox(height: 16),

            // Input Password
            TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan password Anda',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Login
            ElevatedButton(
              onPressed: () {
                String username = txtUsername.text;
                String password = txtPassword.text;

                // 2. Dibungkus setState agar perubahan variabel merender ulang layar
                setState(() {
                  if (username == "admin" && password == "admin") {
                    print("Login Berhasil");
                    statusLogin = "Admin";
                  } else {
                    print("Login Gagal");
                    statusLogin = "(Gagal)";
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}