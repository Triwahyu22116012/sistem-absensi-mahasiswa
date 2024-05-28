import 'package:flutter/material.dart';

class DosenHomeHeader extends StatelessWidget {
  const DosenHomeHeader({
    super.key,
    required this.onPressed
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // horizontal alignment
      crossAxisAlignment: CrossAxisAlignment.start, // vertical alignment
      children: [
        const Image(image: AssetImage("assets/img_profile.png"), width: 50),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: SizedBox(
            width: 249, // sementara
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hendra Nelva Saputra, S.Pd., M,Pd",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                  maxLines: 1,
                ),
                Text(
                  "hendranelva@umkendari.ac.id",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Color(0xff808080)
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.notifications),
            iconSize: 32,
          ),
        ),
      ],
    );
  }
}
