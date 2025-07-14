import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/widgets/order-card.dart';
import 'package:burger_home/screens/more%20&%20store%20management/ad-details-more-2/ad-details-more-2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../store-home/widgets/tab-button.dart';
import '../../ad-details/ad-details.dart';
import '../../categories/widgets/header-title.dart';
import '../provider.dart';
import 'ad-card.dart';

class AdsSection extends StatelessWidget {
  const AdsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: CustomTitle(title: 'All Orders'),
        ),
        Consumer<AdvertisementProvider>(
          builder:
              (context, provider, child) => SizedBox(
                height: 36.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) {
                    final tab = provider.tabs[index];
                    return TabButton(
                      height: 36.h,

                      label: tab["label"],
                      useFixedWidth: false,
                      isSelected: tab["selected"],
                      onPressed: () {},
                      selectedColor: blueColor,
                      unselectedColor: Colors.white,
                      selectedTextColor: Colors.white,
                      unselectedTextColor: titleColor,
                      selectedBorderColor: Colors.transparent,
                      unselectedBorderColor: containerBorderLight,
                    );
                  },

                  itemCount: provider.tabs.length,
                ),
              ),
        ),
        SizedBox(height: 16.h),
        Consumer<AdvertisementProvider>(
          builder:
              (context, provider, child) => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.adList.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) {
                  final ad = provider.adList[index];
                  return AdCard(
                    adId: ad["adId"]!,
                    type: ad["type"]!,
                    placedDate: ad["placedDate"]!,
                    duration: ad["duration"]!,
                    onTap:
                        () => Navigator.pushNamed(context, AdDetailsScreen.id),
                  );
                },
              ),
        ),
      ],
    );
  }
}
