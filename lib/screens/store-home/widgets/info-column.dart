import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  final Widget icon;
  final String title;
  final String label;
  final Color labelColor;
  final Color titleColor;

  const InfoColumn({
    super.key,
    required this.icon,
    required this.label,
    required this.title,
    required this.labelColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: labelColor,

                fontSize: 12,
              ),
            ),
          ],
        ),
        Text(title, style: TextStyle(color: titleColor, fontSize: 16)),
      ],
    );
  }
}
