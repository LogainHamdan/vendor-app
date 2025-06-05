import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

class CustomReviewCard extends StatelessWidget {
  final String date;
  final String opinion;
  final Widget image;
  const CustomReviewCard({
    super.key,
    required this.date,
    required this.opinion,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 65),
          child: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: image,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 280,
          height: 132,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: containerBorderLight),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  date,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),

                Row(
                  children: List.generate(
                    5,
                    (index) =>
                        SvgPicture.asset(starIcon, height: 14, width: 14),
                  ),
                ),
                SizedBox(height: 8),

                Text(
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                  opinion,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
