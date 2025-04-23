import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';

class CustomSearchField extends StatelessWidget {
  final Color titleColor;
  final Color fillColor;
  final double borderRadius;
  final TextEditingController controller;
  final double? height;
  final double? width;

  const CustomSearchField({
    super.key,
    required this.titleColor,
    required this.fillColor,
    this.borderRadius = 12,
    required this.controller,
    this.height = 48,
    this.width = 288,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: titleColor),
          filled: true,
          fillColor: fillColor,
          prefixIcon: IconButton(
            icon: SvgPicture.asset(searchIcon, height: 24, width: 24),
            onPressed: () {},
          ),
          suffixIcon: SizedBox(
            width: 60,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  child: SvgPicture.asset(cameraIcon, height: 24, width: 24),
                  onTap: () {},
                ),
                SizedBox(width: 8),
                InkWell(
                  child: SvgPicture.asset(filterIcon, height: 24, width: 24),
                  onTap: () {},
                ),
              ],
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
