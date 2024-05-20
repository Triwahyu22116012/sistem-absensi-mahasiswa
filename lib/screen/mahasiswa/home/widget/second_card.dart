import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    super.key,
    required this.onPressed,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 172,
        height: 160,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xFF0E335E)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(image: AssetImage(imagePath), width: 90,),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
