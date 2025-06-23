import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOption extends StatelessWidget {
  const CustomOption({
    super.key,
    required this.context,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final BuildContext context;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: isSelected ? blueColor : Colors.grey.shade300,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off,
                color: isSelected ? blueColor : Colors.grey,
                size: 20.sp,
              ),
              SizedBox(width: 16.w),
              SizedBox(
                width: 96.w,
                child: Text(
                  title,
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
