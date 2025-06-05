import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/profile-img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class InfoRow extends StatelessWidget {
  final Widget image;
  final String name;
  final String number;

  const InfoRow({
    super.key,
    required this.image,
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileImage(height: 48, width: 48, img: person),
        SizedBox(width: 8.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            Text(
              number,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: numberColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
