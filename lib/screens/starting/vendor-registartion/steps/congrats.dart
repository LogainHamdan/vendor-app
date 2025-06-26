import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/starting/sign-in/sign-in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CongratulationsScreen extends StatelessWidget {
  static const id = '/congrats';

  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Vendor Registration'),
      body: CustomParentContainer(
        children: [
          Center(child: SvgPicture.asset(ribbonsIcon)),
          SizedBox(height: 47.h),
          Center(
            child: SvgPicture.asset(successIcon, height: 106.h, width: 106.w),
          ),
          SizedBox(height: 23.h),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Congratulations ! 🎉',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16.h),
          Center(
            child: Text(
              textAlign: TextAlign.center,

              style: TextStyle(color: titleColor, fontSize: 16.sp),
              'Thank you for subscribing; your request is being reviewed for approval',
            ),
          ),
          SizedBox(height: 32.h),
          CustomElevatedButton(
            text: 'Back to Login',
            onPressed:
                () => Navigator.pushReplacementNamed(context, SignInScreen.id),
            outlined: true,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
