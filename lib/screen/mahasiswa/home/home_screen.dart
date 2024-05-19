import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/home_header.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/main_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/tes_camera_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
          children: [
            HomeHeader(),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: MainCard()
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 172,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFF0E335E)
                    ),
                  ),
                  Container(
                    width: 172,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFF0E335E)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TesCameraScreen())
          );
        },
        child: const Icon(
          Icons.add_a_photo_outlined
        ),
      ),
    );
  }
}