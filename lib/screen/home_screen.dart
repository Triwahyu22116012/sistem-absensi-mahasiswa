import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // horizontal alignment
          crossAxisAlignment: CrossAxisAlignment.start, // vertical alignment
          children: [
            const Image(image: AssetImage("assets/img.png"), width: 50),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: 265, // sementara
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fera Feriska Ristania R",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                    Text(
                      "22116018",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Color(0xff808080)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: IconButton(
                onPressed: () { },
                icon: const Icon(Icons.notifications),
                iconSize: 32,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(
          Icons.add_a_photo_outlined
        ),
      ),
    );
  }
}