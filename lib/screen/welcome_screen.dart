import 'package:absensi_mahasiswa/widget/main_button.dart';
import 'package:absensi_mahasiswa/widget/second_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
            child: Image(image: AssetImage("assets/img_welcome.png"), height: 300,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 24
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "di ",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              Text(
                "Aplikasi AbsenUMK",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text(
              "Masuk sebagai",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 16, right: 16),
            child: MainButton(title: "Mahasiswa"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: SecondButton(title: "Dosen",),
          ),
        ],
      ),
    );
  }
}
