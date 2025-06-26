import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/business,%20expenses/expense-report/expense-report.dart';
import 'package:burger_home/screens/business,%20expenses/shift-in-this-plan/provider.dart';
import 'package:burger_home/screens/business,%20expenses/shift-in-this-plan/widgets/plan-column.dart';
import 'package:burger_home/screens/business,%20expenses/shift-in-this-plan/widgets/plan-details-container.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/plan-details.dart';
import 'package:burger_home/screens/starting/vendor-registartion/widgets/custom-option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ShiftInThisPlanScreen extends StatelessWidget {
  static const id = '/shift';

  const ShiftInThisPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Business Plan'),
      bottomNavigationBar: DraggableButton(
        title: 'Shift In This Plan',
        onPressed: () => Navigator.pushNamed(context, ExpenseReportScreen.id),
      ),
      body: Consumer<ShiftInThisPlanProvider>(
        builder:
            (context, provider, child) => SafeArea(
              child: SingleChildScrollView(
                child: CustomParentContainer(
                  children: [
                    SizedBox(height: 16.h),
                    Center(
                      child: Image.asset(refreshImg, height: 52.h, width: 52.w),
                    ),
                    SizedBox(height: 24.h),
                    SizedBox(
                      height: 140.h,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                                horizontal: 33.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: containerColor,
                              ),
                              child: PlanColumn(
                                isBurgundy: false,
                                type: 'Standard',
                                price: '₪590.00',
                                duration: '365 days',
                                textColor: blackColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                                horizontal: 33.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: burgundyColor,
                              ),
                              child: PlanColumn(
                                isBurgundy: true,
                                type: 'Pro',
                                price: '₪590.00',
                                duration: '365 days',
                                textColor: containerColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    PlanDetailsContainer(
                      validity: '365 days',
                      price: '₪590.00',
                      status: 'Migrage',
                    ),
                    SizedBox(height: 24.h),
                    CustomTitle(title: 'Pay With'),
                    SizedBox(height: 16.h),
                    CustomOption(
                      title: 'Bank Of Palestine',
                      isSelected: provider.isBOP,
                      onTap: provider.toggleBOP,
                      icon: Image.asset(BOPImg, height: 30.h, width: 30.w),
                    ),
                    SizedBox(height: 16.h),

                    CustomOption(
                      title: 'Jawwal Pay',
                      isSelected: provider.isJawwal,
                      onTap: provider.toggleJawwal,
                      icon: Image.asset(
                        jawwalPayImg,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    SizedBox(height: 16.h),

                    CustomOption(
                      title: 'Pal Pay',
                      isSelected: provider.isPalpay,
                      onTap: provider.togglePalpay,
                      icon: Image.asset(palpayImg, height: 30.h, width: 30.w),
                    ),
                    SizedBox(height: 16.h),

                    CustomOption(
                      title: 'Debit Card',
                      isSelected: provider.isdebit,
                      onTap: provider.toggleDebit,
                      icon: Image.asset(
                        debitCardImg,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
