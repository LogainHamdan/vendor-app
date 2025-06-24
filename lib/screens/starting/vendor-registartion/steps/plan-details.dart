import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/starting/vendor-registartion/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widgets/custom-option.dart';

class PlanDetails extends StatelessWidget {
  const PlanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RegistrationProvider>(context, listen: false);
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            Row(
              children: [
                CustomOption(
                  title: "Commission Base",
                  isSelected: !provider.isSubscriptionBase,
                  onTap:
                      () => provider.toggleCommissionType(
                        !provider.isSubscriptionBase,
                      ),
                ),
                SizedBox(width: 16.w),
                CustomOption(
                  title: "Subscription Base",
                  isSelected: provider.isSubscriptionBase,
                  onTap:
                      () => provider.toggleCommissionType(
                        !provider.isSubscriptionBase,
                      ),
                ),
              ],
            ),
            SizedBox(height: 24.h),

            if (!provider.isSubscriptionBase)
              Text(
                style: TextStyle(color: titleColor, fontSize: 14.sp),

                'Vendor will pay 10.0% commission to Wefrh for each order. you will get access of all features and options in vendor panel, app and interaction with user.',
              ),
            if (provider.isSubscriptionBase) ...[
              Text(
                style: TextStyle(color: titleColor, fontSize: 14.sp),
                'Run Vendor by purchasing subscription packages. you will have access the features of in vendor panel.',
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 370.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => SvgPicture.asset(subscriptionImage),
                  separatorBuilder: (context, index) => SizedBox(width: 16.w),
                  itemCount: 3,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
