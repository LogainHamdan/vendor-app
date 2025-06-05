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
  final Function()? suffixMethod;
  final TextEditingController? controller;

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
    this.suffixMethod,
    this.controller,
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
            border: Border.all(color: cardBorder),
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: TextField(
            controller: controller,
            focusNode: AlwaysDisabledFocusNode(),

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
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 12.h,
              ),
              suffixIcon:
                  suffixIcon != null
                      ? GestureDetector(
                        onTap: suffixMethod,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: Center(child: suffixIcon),
                          ),
                        ),
                      )
                      : null,
            ),
          ),
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => true;
}
