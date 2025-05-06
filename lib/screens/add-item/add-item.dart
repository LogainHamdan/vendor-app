import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/add-item/provider.dart';
import 'package:burger_home/screens/add-item/widgets/arabic-section.dart';
import 'package:burger_home/screens/add-item/widgets/english-section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../store-home/widgets/tab-button.dart';

class EditItemScreen extends StatelessWidget {
  static const id = '/edit-item';

  EditItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Item'),
      body: Padding(
        padding: EdgeInsets.only(top: 16.0.h),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Consumer<AddItemProvider>(
                        builder: (context, provider, child) {
                          return TabButton(
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
                      Consumer<AddItemProvider>(
                        builder: (context, provider, child) {
                          return TabButton(
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
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: Consumer<AddItemProvider>(
                    builder: (context, provider, child) {
                      return provider.showArabic
                          ? ArabicSection()
                          : EnglishSection();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
