import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
            child: Image(image: AssetImage("assets/img_login.png")),
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
                  fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
