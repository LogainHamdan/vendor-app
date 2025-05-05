import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String hint;
  final Widget? suffixIcon;
  final TextInputType? keyboardType; // nullable
  final ValueChanged<String>? onChanged;
  final double? height;
  final double? width;
  final int? maxLines;
  final Color borderColor;

  const CustomTextField({
    super.key,
    this.label,
    required this.hint,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
    this.height = 52,
    this.width = 344,
    this.maxLines = 1,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: blackColor,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: blackColor,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: titleColor,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
          suffixIcon:
              suffixIcon != null
                  ? Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: suffixIcon,
                  )
                  : null,
        ),
      ),
    );
  }
}
