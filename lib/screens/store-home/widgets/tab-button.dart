import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final Color selectedBorderColor;
  final Color unselectedBorderColor;

  const TabButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selectedTextColor,
    required this.unselectedTextColor,
    required this.selectedBorderColor,
    required this.unselectedBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isSelected ? selectedColor : unselectedColor,
          foregroundColor: isSelected ? selectedTextColor : unselectedTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: isSelected ? selectedBorderColor : unselectedBorderColor,
              width: 1,
            ),
          ),
          minimumSize: Size(168.w, 40.h),
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            textStyle: TextStyle(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
