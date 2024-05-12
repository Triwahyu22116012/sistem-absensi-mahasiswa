import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.onClick,
  });

  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF124076),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),

        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
