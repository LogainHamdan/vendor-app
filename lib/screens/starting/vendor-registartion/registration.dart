import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/starting/vendor-registartion/provider.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/congrats.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/owner-information.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/plan-details.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/vendor-information.dart';
import 'package:burger_home/screens/starting/vendor-registartion/widgets/stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RegistrationScreen extends StatelessWidget {
  static const id = '/registration';

  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stepperProvider = Provider.of<RegistrationProvider>(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Vendor Registration',
        onBack: stepperProvider.previousStep,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomParentContainer(
                children: [
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      CustomStepper(
                        isActive: stepperProvider.currentStep == 0,
                        isCompleted: stepperProvider.currentStep > 0,
                      ),
                      SizedBox(width: 8.w),
                      CustomStepper(
                        isActive: stepperProvider.currentStep == 1,
                        isCompleted: stepperProvider.currentStep > 1,
                      ),
                      SizedBox(width: 8.w),

                      CustomStepper(
                        isActive: stepperProvider.currentStep == 2,
                        isCompleted: false,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0.h),
                    child: Divider(color: verticalDividerColor, thickness: 1.h),
                  ),
                ],
              ),

              IndexedStack(
                index: stepperProvider.currentStep,
                children: [
                  VendorInformation(),
                  OwnerInformation(),
                  PlanDetails(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DraggableButton(
        title:
            stepperProvider.currentStep == stepperProvider.stepTitles.length - 1
                ? 'Apply'
                : 'Next',
        onPressed:
            stepperProvider.currentStep == stepperProvider.stepTitles.length - 1
                ? () => Navigator.pushReplacementNamed(
                  context,
                  CongratulationsScreen.id,
                )
                : stepperProvider.nextStep,
      ),
    );
  }
}
