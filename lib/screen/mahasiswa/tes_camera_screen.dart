import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widget/main_button.dart';

class TesCameraScreen extends StatefulWidget {
  const TesCameraScreen({super.key});

  @override
  State<TesCameraScreen> createState() => _TesCameraScreenState();
}

class _TesCameraScreenState extends State<TesCameraScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tes Camera"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16),
                child: _selectedImage != null ? Image.file(_selectedImage!) : const Text("Masukan Gambar"),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: MainButton(
                title: "Open Camera",
                onClick: () {
                  _openCamera();
                },
              ),
            ),
          ]
        )
      ),
    );
  }

  // fungsi untuk membuka kamera
  Future _openCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) return;
    setState(() {
      _selectedImage = File(image.path);
    });
  }
}
