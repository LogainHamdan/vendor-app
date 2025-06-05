import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/profile-img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../edit-item/widgets/custom-parent-container.dart';
import '../../edit-item/widgets/draggable-button.dart';

class ProfileScreen extends StatelessWidget {
  static const id = '/profile';

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
                clipBehavior: Clip.none,
                children: [
                  ProfileImage(height: 120, width: 120, img: person),
                  Positioned(
                    bottom: -8.h,
                    right: -20.w,
                    child: SvgPicture.asset(
                      editOrange,
                      height: 32.h,
                      width: 32.w,
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
          ],
        ),
      ),
      bottomNavigationBar: DraggableButton(
        title: 'Save Changes',
        onPressed: () {},
      ),
    );
  }
}
