import 'dart:io';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FaceVerificationScreen extends StatefulWidget {
  const FaceVerificationScreen({super.key});

  @override
  State<FaceVerificationScreen> createState() => _FaceVerificationScreenState();
}

class _FaceVerificationScreenState extends State<FaceVerificationScreen> {

  File? _selectedImage;

  // fungsi untuk membuka kamera
  Future _openCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) return;
    setState(() {
      _selectedImage = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget buttonWidget =
    FilledButton(
        onPressed: () {
          _openCamera();
        },
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            )
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(Icons.camera_alt_outlined),
            ),
            SizedBox(width: 8),
            Text(
              "Kamera",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
    );

    if (_selectedImage != null) {
      buttonWidget =
          FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen())
                );
              },
              style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verifikasi",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
          );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifikasi"),
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
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: buttonWidget,
                  ),
                ),
              ]
          )
      ),
    );
  }
}