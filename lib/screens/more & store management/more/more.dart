import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/info-row.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/options-container.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/small-container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data.dart';

class MpreScreen extends StatelessWidget {
  const MpreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'More'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              height: 80.h,
              width: 344.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoRow(
                    image: SvgPicture.asset(person, height: 48.h, width: 48.w),
                    name: 'Mohammed Salem',
                    number: '+91231515548',
                  ),
                  SmallContainer(color: containerColor, title: 'Details'),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            CustomTitle(title: 'Store Management'),
            SizedBox(height: 16.h),

            OptionsContainer(items: storeManagementItems),
            SizedBox(height: 16.h),

            CustomTitle(title: 'Marketing Ads'),
            SizedBox(height: 16.h),
            OptionsContainer(items: marketingAdsItems),
            SizedBox(height: 16.h),

            CustomTitle(title: 'Business & Reports'),
            SizedBox(height: 16.h),
            OptionsContainer(items: businessReportsItems),
            SizedBox(height: 16.h),

            CustomTitle(title: 'Help & Settings'),
            SizedBox(height: 16.h),
            OptionsContainer(items: settingsItems),
            SizedBox(height: 16.h),
            OptionsContainer(
              noArrow: true,
              items: [
                {'title': 'Logout', 'icon': logoutCircle},
              ],
            ),
          ],
        ),
      ),
    );
  }
}
