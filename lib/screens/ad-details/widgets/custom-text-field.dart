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
    this.height = 42,
    this.width = 344,
    this.maxLines = 1,
    required this.borderColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              label!,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
          ),
        Container(
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
              isDense: true,
              suffix:
                  suffixIcon != null
                      ? Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: suffixIcon,
                      )
                      : null,
            ),
          ),
        ),
      ],
    );
  }
}
