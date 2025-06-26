import 'package:burger_home/screens/ad-details/alerts/alerts.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-drop-down.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/starting/vendor-registartion/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../ad-details/widgets/upload-container.dart';
import '../../../store-home/widgets/tab-button.dart';

class VendorInformation extends StatelessWidget {
  const VendorInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),

            child: Column(
              children: [
                CustomTitle(title: 'Vendor/Supplier Information'),
                SizedBox(height: 16.h),
                Consumer<RegistrationProvider>(
                  builder:
                      (context, tabProvider, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TabButton(
                            width: 168,

                            label: "English",
                            isSelected: tabProvider.showEnglish,
                            onPressed: () => tabProvider.showEnglishTab(),
                            selectedColor: blueColor,
                            unselectedColor: Colors.white,
                            selectedTextColor: Colors.white,
                            unselectedTextColor: titleColor,
                            selectedBorderColor: Colors.transparent,
                            unselectedBorderColor: containerBorderLight,
                          ),
                          const SizedBox(width: 10),
                          TabButton(
                            width: 168,
                            label: "Arabic",
                            isSelected: !tabProvider.showEnglish,
                            onPressed: () => tabProvider.showArabicTab(),
                            selectedColor: blueColor,
                            unselectedColor: Colors.white,
                            selectedTextColor: Colors.white,
                            unselectedTextColor: titleColor,
                            selectedBorderColor: Colors.transparent,
                            unselectedBorderColor: containerBorderLight,
                          ),
                        ],
                      ),
                ),
                SizedBox(height: 16.h),
                CustomTextField(hint: 'Wefrh', label: 'Vendor Name'),
                SizedBox(height: 16.h),
                CustomTextField(hint: 'Supermarket', label: 'Subline'),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    UploadContainer(
                      title: "Vendor Logo",
                      ratio: '1:1',
                      image: SvgPicture.asset(uploadContainer),
                    ),
                    SizedBox(width: 16),
                    UploadContainer(
                      title: "Vendor Cover",
                      ratio: '1:3',
                      image: SvgPicture.asset(uploadContainer),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
        CustomParentContainer(
          children: [
            SizedBox(height: 16.h),

            CustomTitle(title: 'Location Information'),
            Image.asset(mapIcon, height: 138.h),
            SizedBox(height: 16.h),
            CustomDropdownFormField(
              label: 'Select Zone',
              hint: 'Filled',
              items: [],
              providerKey: 'select-zone',
            ),
            SizedBox(height: 16.h),
            CustomDropdownFormField(
              label: 'Select Module',
              hint: 'Filled',
              items: [],
              providerKey: 'select-zone',
            ),
            SizedBox(height: 16.h),
          ],
        ),
        CustomParentContainer(
          children: [
            SizedBox(height: 16.h),
            CustomTitle(title: 'Vendor Preferences'),
            SizedBox(height: 16.h),
            CustomTextField(
              hint: '50',
              label: 'VAT (Value Added Tax)',
              suffixIcon: SvgPicture.asset(orangeInfoCircle),
              suffixMethod: () => showScheduleAlert(context),
            ),
            SizedBox(height: 24.h),
            CustomTextField(
              hint: '7-10 minutes',
              label: 'Estimated Delivery Time',
              suffixMethod: () => showScheduleAlert(context),

              suffixIcon: SvgPicture.asset(clockGreen),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ],
    );
  }
}
