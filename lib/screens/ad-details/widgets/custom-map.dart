import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMap extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;

  const CustomMap({
    super.key,
    required this.assetPath,
    this.width = 344,
    this.height = 138,
    this.borderRadius = 16,
    this.borderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
          fit: BoxFit.cover, // Optional for better scaling
        ),
      ),
    );
  }
}
