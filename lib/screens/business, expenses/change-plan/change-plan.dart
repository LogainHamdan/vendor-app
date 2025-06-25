import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

class ChangePlanScreen extends StatelessWidget {
  static const id = '/change-plan';

  const ChangePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Change Plan'),
      bottomNavigationBar: DraggableButton(title: 'Shift In This Plan'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomParentContainer(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.0.h, bottom: 138.h),
                child: SizedBox(
                  height: 452.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder:
                        (context, index) => SvgPicture.asset(businessPlanImg2),
                    separatorBuilder: (context, index) => SizedBox(width: 16.w),
                    itemCount: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
