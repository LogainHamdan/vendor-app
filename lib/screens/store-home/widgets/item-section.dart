import 'package:burger_home/screens/store-home/widgets/custom-chip.dart';
import 'package:burger_home/screens/store-home/widgets/custom-search-field.dart';
import 'package:burger_home/screens/store-home/widgets/product-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';
import '../../ad-details/ad-details.dart';
import '../../more & store management/personal-care/data.dart';
import 'items-grid-view.dart';

class ItemsSection extends StatelessWidget {
  const ItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Burgers",
      "Fries & Sides",
      "Drinks & Shakes",
      "Burgers",
      "Fries & Sides",
    ];

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: CustomSearchField(
                    titleColor: titleColor,
                    fillColor: greyBgColor,
                    controller: TextEditingController(),
                  ),
                ),
                SizedBox(width: 16.w),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, CreateAdScreen.id),
                  child: SvgPicture.asset(addContainer, height: 40, width: 40),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          SizedBox(
            height: 70,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: categories.length,
                itemBuilder:
                    (context, index) => CustomChip(
                      label: categories[index],
                      textColor: titleColor,
                      borderColor: borderColor,
                    ),
              ),
            ),
          ),

          SizedBox(height: 8.h),

          ItemsGridView(items: items),
        ],
      ),
    );
  }
}
