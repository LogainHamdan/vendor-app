import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/add-item/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'custom-drop-down.dart';

class EnglishSection extends StatelessWidget {
  String discountType = 'Amount';

  EnglishSection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddItemProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(title: 'Item Info'),
                SizedBox(height: 16.h),
                CustomTextField(
                  hint: 'Item Name',
                  label: 'Name',
                  borderColor: cardBorder,
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  label: 'Description',
                  hint: 'Type your description',
                  borderColor: borderColor,
                  maxLines: 5,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 16.0.h),
            child: Container(
              color: Colors.white,

              child: Column(
                children: [
                  CustomTitle(title: 'Item Setup'),

                  SizedBox(height: 16.h),
                  CustomDropdownFormField(
                    label: 'Category',
                    items: [
                      'Lorem Ipsum',
                      'Dolor Sit',
                      'Lorem Ipsum',
                      'Dolor Sit',
                      'Lorem Ipsum',
                      'Dolor Sit',
                    ],
                    providerKey: 'category',
                  ),

                  SizedBox(height: 16.h),
                  CustomTextField(
                    hint: '13.50',
                    borderColor: cardBorder,
                    label: 'Price',
                  ),

                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdownFormField(
                          width: 164,
                          label: 'Discount Type',
                          items: ['Amount', 'Percent'],
                          providerKey: 'discountType',
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: CustomTextField(
                          width: 164,
                          hint: '10.50',
                          borderColor: cardBorder,
                          label: 'Discount Value',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    hint: '17',
                    borderColor: cardBorder,
                    label: 'Maximum Order Quantity',
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    hint: '17',
                    borderColor: cardBorder,
                    label: 'Items In Stock',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0.h),
                    child: Container(
                      color: Colors.white,
                      child: Column(children: []),
                    ),
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
