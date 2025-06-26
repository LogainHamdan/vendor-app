import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../edit-item/provider.dart';

class UploadContainer extends StatelessWidget {
  final String title;
  final String? ratio;
  final Widget image;

  const UploadContainer({
    super.key,
    required this.title,
    this.ratio = '',
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              TextSpan(text: ' '),
              TextSpan(
                text: ratio,
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        image,
      ],
    );
  }
}
