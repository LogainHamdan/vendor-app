import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OwnerInformation extends StatelessWidget {
  const OwnerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            CustomTitle(title: 'Owner Info'),
            SizedBox(height: 24.h),
            CustomTextField(hint: 'Abderahman', label: 'First Name'),
            SizedBox(height: 16.h),
            CustomTextField(hint: 'Gamal', label: 'Last Name'),
            SizedBox(height: 16.h),
            CustomTextField(
              hint: '597080536',
              label: 'Mobile Number',
              isPhoneNum: true,
            ),
            SizedBox(height: 16.h),
            CustomTextField(hint: 'abdelrahman11@gmail.com', label: 'E-mail'),
            SizedBox(height: 16.h),
            CustomTextField(
              hint: '*********',
              label: 'Password',
              suffixIcon: SvgPicture.asset(visibleEyeIcon),
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              hint: '*********',
              label: 'Confirm Password',
              suffixIcon: SvgPicture.asset(invisibleEyeIcon),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
