import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../widget/main_button.dart';

class FaceRegistrationScreen extends StatefulWidget {
  const FaceRegistrationScreen({super.key});

  @override
  State<FaceRegistrationScreen> createState() => _TesCameraScreenState();
}

class _TesCameraScreenState extends State<FaceRegistrationScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrasi"),
      ),
      body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              _selectedImage != null ?
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container( // jika file foto ada
                    width: 380,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: FileImage(_selectedImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ) :
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container( // jika file foto belum ada
                    width: 380,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      border: Border.all(color: Colors.grey)
                    ),
                    child: const Icon(Icons.camera_alt, size: 48),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
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