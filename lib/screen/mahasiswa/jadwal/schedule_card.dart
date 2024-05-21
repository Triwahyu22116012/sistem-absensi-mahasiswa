import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
    required this.title,
    required this.time,
    required this.place
  });

  final String title;
  final String time;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xFFD7E8F5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal
              ),
            ),
            Text(
              place,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal
              ),
            )
          ],
        ),
      ),
    );
  }
}
