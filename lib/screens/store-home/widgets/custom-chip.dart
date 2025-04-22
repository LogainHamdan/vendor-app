import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;
  final VoidCallback? onTap;

  const CustomChip({
    super.key,
    required this.label,
    required this.textColor,
    required this.borderColor,
    this.borderRadius = 16,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        color: WidgetStatePropertyAll(Colors.white),
        label: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
