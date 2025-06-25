import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/provider.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/widgets/contact-details-container.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';

class HelpAndSupportScreen extends StatelessWidget {
  static const id = '/help';

  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HelpAndSupportProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: CustomAppBar(title: 'Help & Support'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
              Image.asset(
                helpAndSupportImg,
                width: double.infinity,
                height: 133.h,
              ),
              SizedBox(height: 32.h),
              CustomTitle(title: 'Your Support is Our Priority'),
              SizedBox(height: 8.h),
              Text(
                'At Wefrh, we\'re here to help – contact us via phone\nor email for assistance!',
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0.h),
                child: Divider(color: verticalDividerColor, thickness: 1),
              ),

              Column(
                children:
                    provider.contactInfo(context).map((item) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.0.h),
                        child: ContactDetailsContainer(
                          icon: Image.asset(
                            item['icon'],
                            height: 40.h,
                            width: 40,
                          ),
                          title: item['title'],
                          description: item['description'],
                          suffixIcon: item['suffixIcon'],
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
