import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  final double height;
  final double width;
  final String img;
  const ProfileImage({
    super.key,
    required this.height,
    required this.width,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: Image.asset(img, fit: BoxFit.cover),
    );
  }
}
