import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOption extends StatelessWidget {
  const CustomOption({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.icon,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: isSelected ? blueColor : containerBorderLight,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 16.w),
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? blueColor : titleColor,
              size: 20.sp,
            ),
            SizedBox(width: 16.w),
            if (icon != null) ...[icon!, SizedBox(width: 8.w)],
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
