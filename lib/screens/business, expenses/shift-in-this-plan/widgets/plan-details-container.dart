import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanDetailsContainer extends StatelessWidget {
  final String validity;
  final String price;
  final String status;

  const PlanDetailsContainer({
    super.key,
    required this.validity,
    required this.price,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: containerBorderLight, width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Validity',
                style: TextStyle(color: titleColor, fontSize: 14.sp),
              ),
              SizedBox(height: 8.h),
              Text(
                validity,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Price',
                style: TextStyle(color: titleColor, fontSize: 14.sp),
              ),
              SizedBox(height: 8.h),
              Text(
                price,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Bill Status',
                style: TextStyle(color: titleColor, fontSize: 14.sp),
              ),
              SizedBox(height: 8.h),
              Text(
                status,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
