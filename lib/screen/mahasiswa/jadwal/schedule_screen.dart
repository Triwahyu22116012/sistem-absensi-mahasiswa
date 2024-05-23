import 'package:absensi_mahasiswa/screen/mahasiswa/jadwal/schedule_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/jadwal/schedule_detail_screen.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Perkuliahan"),
      ),body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ScheduleCard(
                title: "Metode Penelitian",
                time: "08 : 45 - 10 : 00",
                place: "Ruangan 403",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScheduleDetailScreen())
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Teknik Penulisan Karya Ilmiah",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Manajemen Proyek",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Statistik Pendidikan",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Evaluasi Pembelajaran",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Sistem Informasi Manajemen",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ScheduleCard(
                    title: "Pengembangan Aplikasi Perangkat Mobile",
                    time: "08 : 45 - 10 : 00",
                    place: "Ruangan 403", onPressed: () {  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
