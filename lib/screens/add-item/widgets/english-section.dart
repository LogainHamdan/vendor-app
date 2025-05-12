import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/ad-details/widgets/upload-container.dart';
import 'package:burger_home/screens/add-item/provider.dart';
import 'package:burger_home/screens/add-item/widgets/box-container.dart';
import 'package:burger_home/screens/add-item/widgets/custom-checkbox.dart';
import 'package:burger_home/screens/add-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/add-item/widgets/custom-radio.dart';
import 'package:burger_home/screens/add-item/widgets/small-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'custom-tag.dart';
import 'custom-drop-down.dart';

class EnglishSection extends StatefulWidget {
  EnglishSection({super.key});

  @override
  State<EnglishSection> createState() => _EnglishSectionState();
}

class _EnglishSectionState extends State<EnglishSection> {
  String discountType = 'Amount';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddItemProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  CustomTitle(title: 'Item Info'),
                  SizedBox(height: 16.h),
                  CustomTextField(hint: 'Item Name', label: 'Name'),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    label: 'Description',
                    hint: 'Type your description',
                    maxLines: 5,
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),

          CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
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
              CustomTextField(hint: '13.50', label: 'Price'),

              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: CustomDropdownFormField(
                      label: 'Discount Type',
                      items: ['Amount', 'Percent'],
                      providerKey: 'discountType',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  CustomTextField(
                    width: 145,
                    hint: '10.50',
                    label: 'Discount Value',
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomTextField(hint: '17', label: 'Maximum Order Quantity'),
              SizedBox(height: 16.h),
              CustomTextField(hint: '17', label: 'Items In Stock'),
              Padding(
                padding: EdgeInsets.only(top: 16.0.h),
                child: Container(
                  color: Colors.white,
                  child: Column(children: []),
                ),
              ),
            ],
          ),
          CustomParentContainer(
            children: [
              CustomTitle(
                title: 'Variation',
                suffix: SvgPicture.asset(closeIcon, height: 23.h, width: 32.w),
              ),
              SizedBox(height: 16.h),
              BoxContainer(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0).w,
                  child: Column(
                    children: [
                      CustomTextField(label: 'Name', hint: 'Name'),
                      SizedBox(height: 16.h),
                      CustomCheckbox(
                        title: 'Required',
                        providerKey: 'required',
                      ),
                      SizedBox(height: 16.h),
                      CustomRadio(
                        title: 'Select Type',
                        options: ['Single', 'Multiple'],
                      ),
                      SizedBox(height: 16.h),
                      CustomTextField(label: 'Price', hint: '12.5'),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomSmallButton(
                          title: 'New Variation',
                          textColor: Colors.white,
                          backgroundColor: greenColor,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),

          CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
              CustomDropdownFormField(
                label: 'Addons',
                items: ['Burger', 'Burger', 'Burger', 'Burger'],
                providerKey: 'addons',
              ),
              SizedBox(height: 16.h),
            ],
          ),
          CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
              CustomTextField(hint: 'Burger', label: 'Tag'),
              SizedBox(height: 12.h),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.w,
                children:
                    [
                      'Spicy',
                      'Spicy',
                      'Spicy',
                    ].map((text) => CustomTag(text: text)).toList(),
              ),
              SizedBox(height: 16.h),
            ],
          ),

          CustomParentContainer(
            children: [
              SizedBox(height: 16.h),

              CustomTitle(title: 'Availability'),
              SizedBox(height: 16.h),

              CustomTextField(
                label: 'Available Time Starts',
                hint: '11:00 AM',
                suffixIcon: SvgPicture.asset(
                  clockGreen,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              SizedBox(height: 16.h),

              CustomTextField(
                label: 'Available Time ends',
                hint: '11:00 AM',
                suffixIcon: SvgPicture.asset(
                  clockGreen,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
          CustomParentContainer(
            children: [
              SizedBox(height: 16.h),

              CustomTitle(title: 'Images'),
              SizedBox(height: 16.h),
              UploadContainer(
                title: 'Thumbnail Image',
                ratio: 'Max Size 2MB',
                image: SvgPicture.asset(
                  thumbnailImg,
                  height: 112.h,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 16.h),
              UploadContainer(
                title: 'Item Images',
                image: SizedBox(
                  height: 80.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(pancakeImg, height: 112.h, width: 170.w),
                      SvgPicture.asset(uploadContainer, height: 90.h),
                      SizedBox(width: 5.w),

                      SvgPicture.asset(uploadContainer, height: 90.h),
                      SizedBox(width: 5.w),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
