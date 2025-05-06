import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMap extends StatelessWidget {
  final String assetPath;
  final double height;
  final double borderRadius;
  final Color borderColor;

  const CustomMap({
    super.key,
    required this.assetPath,
    this.height = 138,
    this.borderRadius = 16,
    this.borderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 0.5.w),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(
          assetPath,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
