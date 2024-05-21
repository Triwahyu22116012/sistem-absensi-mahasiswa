import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "15 Mei 2024",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF808080)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFFD7E8F5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(image: AssetImage("assets/ic_absen.png")),
                    ),
                    // child: const Icon(Icons.login_rounded, size: 26),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Masuk",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Metode Penelitian",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                "10:46:02",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFFD7E8F5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(image: AssetImage("assets/ic_absen.png"), color: Colors.deepOrange,),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Izin",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Teknik Penulisan Karya Ilmiah",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 32),
                child: Text(
                  "-",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
