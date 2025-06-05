import 'package:burger_home/screens/store-home/widgets/custom-review-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../provider.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BurgerHomeProvider>(context, listen: false);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 16),
      shrinkWrap: true,
      itemCount: provider.reviews.length,
      itemBuilder: (context, index) {
        final review = provider.reviews[index];
        return CustomReviewCard(
          image: review['image'],
          date: review['date'],
          opinion: review['opinion'],
        );
      },
    );
  }
}
