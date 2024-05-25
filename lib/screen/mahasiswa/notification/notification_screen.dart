import 'package:absensi_mahasiswa/screen/mahasiswa/notification/widget/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifikasi"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            NotificationCard(),
            NotificationCard()
          ],
        ),
      ),
    );
  }
}
