import 'package:burger_home/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanColumn extends StatelessWidget {
  final String type;
  final String price;
  final String duration;
  final Color textColor;
  final bool isBurgundy;

  const PlanColumn({
    super.key,
    required this.type,
    required this.price,
    required this.duration,
    required this.textColor,
    required this.isBurgundy,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          type,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
            color: textColor,
          ),
        ),
        isBurgundy
            ? Divider(
              color: dividerColor,
              thickness: 1,
              endIndent: 20,
              indent: 20,
            )
            : SizedBox(height: 15.h),
        Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
            color: textColor,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          duration,
          style: TextStyle(
            fontSize: 14.sp,
            color: isBurgundy ? dividerColor : blackColor,
          ),
        ),
      ],
    );
  }
}
