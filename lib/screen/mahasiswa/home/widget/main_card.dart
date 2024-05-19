import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            color: Color(0xFF124076)
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 40),
                child: Text(
                  "Metode Penelitian Pendidikan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Hendra Nelva Saputra, S.Pd., M.Pd.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Color(0xFF0E335E),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "08 : 00 - 10 : 00",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 16),
                    child: Text(
                      "Ruangan 403",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
