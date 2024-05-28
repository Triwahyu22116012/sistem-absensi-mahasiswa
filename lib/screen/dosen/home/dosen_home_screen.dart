import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_home_header.dart';
import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_main_card.dart';
import 'package:flutter/material.dart';

import '../../mahasiswa/jadwal/schedule_screen.dart';

class DosenHomeScreen extends StatelessWidget {
  const DosenHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
          children: [
            DosenHomeHeader(
              onPressed: () {}
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height - 116,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: DosenMainCard(),
                    ),
                    SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      height: 54,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ScheduleScreen())
                          );
                        },
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          "Jadwal Perkuliahan",
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
