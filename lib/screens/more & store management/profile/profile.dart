import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/add-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/add-item/widgets/draggable-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: SafeArea(
        child: CustomParentContainer(
          children: [
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 122.0.w),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 100.r,
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(
                      person,
                      fit: BoxFit.cover,
                      height: 132.h,
                      width: 132.w,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            CustomTextField(hint: 'Abdelrahman Gamal', label: 'Full Name'),
            SizedBox(height: 16.h),
            CustomTextField(hint: 'abdelrahman@gmail.com', label: 'Email'),
            SizedBox(height: 16.h),
            CustomTextField(hint: '599471582', label: 'Phone Number'),
            SizedBox(height: 120.h),
          ],
        ),
      ),
      bottomNavigationBar: DraggableButton('Save Changes', onPressed: () {}),
    );
  }
}
