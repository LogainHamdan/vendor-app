import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(person, fit: BoxFit.cover),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20/12/2020",
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
                      (index) => SvgPicture.asset(
                        'assets/Star.svg',
                        height: 14,
                        width: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  Text(
                    style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
