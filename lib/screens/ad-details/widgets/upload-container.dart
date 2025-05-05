import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

class UploadContainer extends StatelessWidget {
  final String title;
  final String ratio;

  const UploadContainer({super.key, required this.title, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text: ratio,
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SvgPicture.asset(uploadContainer),
      ],
    );
  }
}
