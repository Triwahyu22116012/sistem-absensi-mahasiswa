 import 'package:flutter/material.dart';

import '../widget/main_button.dart';

class LoginMahasiswaScreen extends StatelessWidget {
  const LoginMahasiswaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
            child: Image(image: AssetImage("assets/img_login_mahasiswa.png"), height: 300,),
          ),
          const Text(
            "Mahasiswa",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "NIM",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: 54,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                        color: Color(0xFF124076),
                        width: 1.5
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                      color: Color(0xFF124076),
                      width: 1.5
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                        color: Color(0xFF124076),
                        width: 1.5
                    ),
                  ),
                  labelText: "Masukan NIM anda",
                ),
                maxLines: 1,
                cursorColor: Color(0xFF124076),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: 54,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                        color: Color(0xFF124076),
                        width: 1.5
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                        color: Color(0xFF124076),
                        width: 1.5
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                        color: Color(0xFF124076),
                        width: 1.5
                    ),
                  ),
                  labelText: "Masukan password anda",
                ),
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: MainButton(
              title: "Masuk",
              onClick: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const LoginMahasiswaScreen()),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
