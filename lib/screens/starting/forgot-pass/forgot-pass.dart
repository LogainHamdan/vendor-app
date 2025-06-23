import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassScreen extends StatelessWidget {
  static const id = '/forgot-pass';

  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Row(
          children: [SizedBox(width: 16.w), SvgPicture.asset(arrowLeftIcon)],
        ),
        leadingWidth: 40.w,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 105.h),
                SvgPicture.asset(logo, height: 100.h),
                SizedBox(height: 24.h),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  textAlign: TextAlign.center,
                  'Please Enter the mobile number linked to your account so we help you recover it',
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 32.h),
                CustomTextField(
                  label: 'Mobile Number',
                  hint: '597080536',
                  isPhoneNum: true,
                ),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                  text: 'Confirm',
                  onPressed: () {},
                  color: burgundyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
