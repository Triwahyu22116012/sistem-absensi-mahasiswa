import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.onClick,
  });

  final String title;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );

  }
}
