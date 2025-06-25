import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/business,%20expenses/privacy-policy/widgets/policy-section.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static const id = '/policy';

  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Privacy Policy'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomParentContainer(
            children: [
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(policiesImg, height: 50.h, width: 50.w),
                  SizedBox(width: 12.w),
                  Text(
                    'Read Our Privacy Policy',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),

              PolicySection(
                number: 1,
                title: 'Acceptance of Terms',
                body:
                    'By accessing or using Wefrh services, you agree to be bound by these Terms & Conditions, which form a legally binding agreement between you and Wafrah.',
              ),
              PolicySection(
                number: 2,
                title: 'Services Provided',
                body:
                    'Wefrh offers a variety of services, including but not limited to e-commerce, delivery, and customer support. These services are subject to availability and may change at any time without notice.',
              ),
              PolicySection(
                number: 3,
                title: 'User Responsibilities',
                body:
                    'You are responsible for maintaining the confidentiality of your account information, including passwords. You agree not to misuse our services or engage in activities that violate any laws.',
              ),
              PolicySection(
                number: 4,
                title: 'Payment Terms',
                body:
                    'All transactions are processed securely through authorized payment gateways. You agree to pay all applicable fees for the services rendered as outlined during the purchase process.',
              ),
              PolicySection(
                number: 5,
                title: 'Privacy Policy',
                body:
                    'All transactions are processed securely through authorized payment gateways. You agree to pay all applicable fees for the services rendered as outlined during the purchase process.',
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
