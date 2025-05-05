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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountValueController = TextEditingController();
  final TextEditingController maxQtyController = TextEditingController();
  final TextEditingController stockController = TextEditingController();

  String discountType = 'Amount';

  EditItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddItemProvider>(context, listen: false);
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Item'),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Padding(
          padding: EdgeInsets.only(top: 16.0.h),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TabButton(
                      label: "العربية",
                      isSelected: provider.showArabic,
                      onPressed: () => provider.showArabicTab(),
                      selectedColor: blueColor,
                      unselectedColor: Colors.white,
                      selectedTextColor: Colors.white,
                      unselectedTextColor: titleColor,
                      selectedBorderColor: Colors.transparent,
                      unselectedBorderColor: containerBorderLight,
                    ),
                    SizedBox(width: 10.w),
                    TabButton(
                      label: "English",
                      isSelected: !provider.showArabic,
                      onPressed: () => provider.showEnglishTab(),
                      selectedColor: blueColor,
                      unselectedColor: Colors.white,
                      selectedTextColor: Colors.white,
                      unselectedTextColor: titleColor,
                      selectedBorderColor: Colors.transparent,
                      unselectedBorderColor: containerBorderLight,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child:
                      provider.showArabic ? ArabicSection() : EnglishSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
