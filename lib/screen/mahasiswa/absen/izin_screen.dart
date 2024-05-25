import 'package:flutter/material.dart';

class IzinScreen extends StatelessWidget {
  const IzinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Izin"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Deskripsi",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color(0xFF275591),
                          width: 1.5
                      )
                  ),
                ),
                style: const TextStyle(
                  fontSize: 18
                ),
                maxLines: 5,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Foto bukti",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 176,
                  height: 50,
                  child: FilledButton(
                      onPressed: () {

                      },
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        backgroundColor: const Color(0xFFFF0000)
                      ),
                      child: const Text(
                        "Upload PDF",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ),
                SizedBox(
                  width: 176,
                  height: 50,
                  child: FilledButton(
                      onPressed: () {

                      },
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        backgroundColor: const Color(0xFFF97300)
                      ),
                      child: const Text(
                        "Izin",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
