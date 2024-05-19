 import 'package:absensi_mahasiswa/screen/mahasiswa/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../widget/main_button.dart';

class LoginMahasiswaScreen extends StatefulWidget {
  const LoginMahasiswaScreen({super.key});

  @override
  State<LoginMahasiswaScreen> createState() => _LoginMahasiswaScreenState();
}

class _LoginMahasiswaScreenState extends State<LoginMahasiswaScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
              child: Image(image: AssetImage("assets/img_login_mahasiswa.png"), height: 300,),
            ),
            const Text(
              "Mahasiswa",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 16, right: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "NIM",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Masukan email anda",
                  // hintText: 'Masukan email anda',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color(0xFF275591),
                          width: 1.5
                      )
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    hintText: 'Masukan password anda',
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color(0xFF275591),
                            width: 1.5
                        )
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: MainButton(
                title: "Masuk",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
