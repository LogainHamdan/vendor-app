import 'package:burger_home/screens/more%20&%20store%20management/banners/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/constants.dart';
import '../../../../ad-details/widgets/custom-text-field.dart';
import '../../../../announcement/widgets/custom-elevated-button.dart';
import '../../../../store-home/widgets/tab-button.dart';
import '../../../categories/widgets/header-title.dart';

void showNewBannerAlert(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,

          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.w,
                      vertical: 36.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderTitle(title: 'Add New Banner'),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Consumer<BannersProvider>(
                              builder: (context, provider, child) {
                                return TabButton(
                                  width: 165,
                                  label: "العربية",
                                  isSelected: provider.showArabic,
                                  onPressed: () => provider.showArabicTab(),
                                  selectedColor: blueColor,
                                  unselectedColor: Colors.white,
                                  selectedTextColor: Colors.white,
                                  unselectedTextColor: titleColor,
                                  selectedBorderColor: Colors.transparent,
                                  unselectedBorderColor: containerBorderLight,
                                );
                              },
                            ),
                            SizedBox(width: 10.w),
                            Consumer<BannersProvider>(
                              builder: (context, provider, child) {
                                return TabButton(
                                  width: 165,
                                  label: "English",
                                  isSelected: !provider.showArabic,
                                  onPressed: () => provider.showEnglishTab(),
                                  selectedColor: blueColor,
                                  unselectedColor: Colors.white,
                                  selectedTextColor: Colors.white,
                                  unselectedTextColor: titleColor,
                                  selectedBorderColor: Colors.transparent,
                                  unselectedBorderColor: containerBorderLight,
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        CustomTextField(hint: 'title', label: 'Enter Title'),
                        SizedBox(height: 16.h),
                        CustomTextField(
                          hint: 'Addon Name (Arabic)',
                          label: 'Addon Name (Arabic)',
                        ),
                        SizedBox(height: 16.h),
                        CustomTextField(
                          hint: 'title',
                          label: 'Redirection URl / Link',
                        ),
                        SizedBox(height: 16.h),
                        SvgPicture.asset(
                          uploadBannerContainer,
                          height: 112.h,
                          width: double.infinity,
                        ),
                        SizedBox(height: 16.h),
                        CustomElevatedButton(
                          text: 'Add',
                          onPressed: () {},
                          color: burgundyColor,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -8,
                    left: 16,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        closeIcon,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
