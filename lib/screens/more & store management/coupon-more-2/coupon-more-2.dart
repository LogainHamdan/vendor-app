import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more-2/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more-2/widgets/alerts/alerts.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more-2/widgets/aligned-fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CouponMore2Screen extends StatelessWidget {
  static const id = '/coupon-more-2';

  const CouponMore2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Coupon'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
              CustomTextField(
                hint: 'Title (English)',
                label: 'Title (English)',
              ),
              SizedBox(height: 16.h),
              CustomTextField(hint: 'Title (Arabic)', label: 'Title (Arabic)'),
              SizedBox(height: 16.h),
              CustomTextField(hint: 'Code', label: 'Code'),
              SizedBox(height: 16.h),
              AlignedCustomTextFields(
                label1: 'Limit For Same User',
                hint1: 'Limit',
                label2: 'Min Purchase',
                hint2: 'Min',
              ),
              SizedBox(height: 16.h),
              Consumer<CouponMore2Provider>(
                builder:
                    (context, provider, child) => AlignedCustomTextFields(
                      controller1: provider.startDateController,
                      controller2: provider.endDateController,
                      label1: 'Start Date',
                      hint1: 'Start Date',
                      label2: 'End Date',
                      hint2: 'End Date',
                      suffixIcon1: SvgPicture.asset(
                        calendarIcon,
                        height: 24.h,
                        width: 24.w,
                      ),
                      suffixIcon2: SvgPicture.asset(
                        calendarIcon,
                        height: 24.h,
                        width: 24.w,
                      ),
                      suffixMethod1:
                          () => showDatePickerDialog(
                            context,
                            provider.startDateController,
                          ),
                      suffixMethod2:
                          () => showDatePickerDialog(
                            context,
                            provider.endDateController,
                          ),
                    ),
              ),
              SizedBox(height: 16.h),
              AlignedCustomTextFields(
                label1: 'Discount Type',
                hint1: 'Percent',
                label2: 'Discount Value',
                hint2: '13%',
                suffixIcon1: Icon(
                  Icons.expand_more,
                  size: 24.sp,
                  color: titleColor,
                ),
              ),
              SizedBox(height: 16.h),

              CustomTextField(hint: '\$17', label: 'Max Discount'),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DraggableButton(title: 'Confirm', onPressed: () {}),
    );
  }
}
