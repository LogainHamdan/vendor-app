import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:burger_home/screens/business,%20expenses/change-plan/change-plan.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBusinessPlanScreen extends StatelessWidget {
  static const id = '/my-business';
  const MyBusinessPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Business Plan'),
      body: SafeArea(
        child: CustomParentContainer(
          children: [
            SizedBox(height: 16.h),
            Center(child: SvgPicture.asset(businessPlanImg1)),
          ],
        ),
      ),
      bottomNavigationBar: DraggableButton(
        title: 'Change Plan',
        onPressed: () => Navigator.pushNamed(context, ChangePlanScreen.id),
      ),
    );
  }
}
