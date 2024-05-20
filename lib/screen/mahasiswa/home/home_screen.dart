import 'package:absensi_mahasiswa/screen/mahasiswa/face_registration/face_registration_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/home_header.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/main_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/second_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/jadwal/jadwal_perkuliahan_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/notification/notification_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
          children: [
            HomeHeader(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NotificationScreen())
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: MainCard()
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SecondCard(
                    title: "Jadwal Perkuliahan",
                    imagePath: "assets/img_jadwal_perkuliahan.png",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const JadwalPerkuliahanScreen())
                      );
                    },
                  ),
                  SecondCard(
                    title: "Registrasi",
                    imagePath: "assets/img_register.png",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FaceRegistrationScreen())
                      );
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Riwayat Absen",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Text(
                    "Lihat Semua >",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF555555)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}