import 'package:burger_home/screens/store-home/widgets/custom-review-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> reviews = [
      {
        'date': "20/12/2020",
        'image': Image.asset(person, fit: BoxFit.cover),
        'opinion':
            "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
      },
      {
        'date': "20/12/2020",
        'image': Image.asset(person, fit: BoxFit.cover),

        'opinion':
            "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
      },
      {
        'date': "20/12/2020",
        'image': Image.asset(person, fit: BoxFit.cover),

        'opinion':
            "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 16),
        shrinkWrap: true,
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return CustomReviewCard(
            image: review['image'],
            date: review['date'],
            opinion: review['opinion'],
          );
        },
      ),
    );
  }
}
