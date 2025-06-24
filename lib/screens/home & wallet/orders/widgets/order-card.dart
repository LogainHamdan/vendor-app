import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/constants.dart';
import '../../../store-home/widgets/custom-popup.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final String placedDate;
  final VoidCallback onTap;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.placedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: containerBorderLight),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Order ID: ',
                  style: TextStyle(fontSize: 14.sp, color: titleColor),
                  children: [
                    TextSpan(
                      text: '#$orderId',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8.h),

              Text(
                placedDate,
                style: TextStyle(fontSize: 10.sp, color: titleColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '1 item (s)',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: greenColor,
                ),
              ),
              SizedBox(width: 4.w),
              SvgPicture.asset(arrowRight, height: 20.h, width: 20.w),
            ],
          ),
        ],
      ),
    );
  }
}
