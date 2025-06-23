import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String hint;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final double? height;
  final double? width;
  final int? maxLines;
  final Function()? suffixMethod;
  final TextEditingController? controller;
  final bool? isPhoneNum;
  final bool? password;

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
    this.isPhoneNum = false,
    this.password = false,
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
          child: Row(
            children: [
              if (isPhoneNum ?? false) ...[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        palestineIcon,
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '05',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(width: 0.5.w, height: 20.h, color: cardBorder),
                      SizedBox(width: 8.w),
                    ],
                  ),
                ),
              ],

              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: AlwaysDisabledFocusNode(),
                  obscureText: password! ? true : false,
                  obscuringCharacter: '*',
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
