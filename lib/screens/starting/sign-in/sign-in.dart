import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-checkbox.dart';
import 'package:burger_home/screens/starting/forgot-pass/forgot-pass.dart';
import 'package:burger_home/screens/starting/sign-in/provider.dart';
import 'package:burger_home/screens/starting/vendor-registartion/registration.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/vendor-information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../main/ui/screens/main_screen.dart';
import '../../store-home/widgets/tab-button.dart';

class SignInScreen extends StatelessWidget {
  static const id = '/sign-in';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 48.h),
                  SvgPicture.asset(logo, height: 100.h, width: 100.w),
                  SizedBox(height: 24.h),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Choose how you\'d like to proceed',
                    style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Consumer<SignInProvider>(
                    builder:
                        (context, tabProvider, child) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TabButton(
                              width: 168,

                              label: "Vendor Owner",
                              isSelected: tabProvider.showOwner,
                              onPressed: () => tabProvider.showOwnerTab(),
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
                              label: "Vendor Employee",
                              isSelected: !tabProvider.showOwner,
                              onPressed: () => tabProvider.showEmployeeTab(),
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
                  SizedBox(height: 32.h),
                  CustomTextField(
                    hint: '0597080536',
                    label: 'Phone Number',
                    isPhoneNum: true,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    hint: 'Enter Your Password',
                    label: 'Password',
                    password: true,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckbox(
                        title: 'Remember Me',
                        providerKey: 'remember-me',
                      ),
                      GestureDetector(
                        onTap: () => ForgotPassScreen.id,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: burgundyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  CustomElevatedButton(
                    text: 'Sign In',
                    onPressed:
                        () => Navigator.pushNamed(context, MainScreen.id),
                    color: burgundyColor,
                  ),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    onTap:
                        () =>
                            Navigator.pushNamed(context, RegistrationScreen.id),
                    child: Text(
                      'Join As Vendor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: titleColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
