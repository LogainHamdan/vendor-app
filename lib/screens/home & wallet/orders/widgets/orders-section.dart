import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/home%20&%20wallet/on-way-order-details/on-way-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/widgets/order-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../edit-item/widgets/custom-checkbox.dart';
import '../../../store-home/widgets/tab-button.dart';
import '../provider.dart';

class OrdersSection extends StatelessWidget {
  final bool allTypes;
  final List<Map<String, dynamic>> tabs;
  final bool? checkbox;

  const OrdersSection({
    super.key,
    required this.tabs,
    required this.allTypes,
    this.checkbox = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        allTypes
            ? SizedBox(
              height: 36.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemBuilder: (context, index) {
                  final tab = tabs[index];
                  return TabButton(
                    height: 36.h,

                    label: tab["label"],
                    useFixedWidth: false,
                    isSelected: tab["selected"],
                    onPressed: () {},
                    selectedColor: blueColor,
                    unselectedColor: Colors.white,
                    selectedTextColor: Colors.white,
                    unselectedTextColor: titleColor,
                    selectedBorderColor: Colors.transparent,
                    unselectedBorderColor: containerBorderLight,
                  );
                },

                itemCount: tabs.length,
              ),
            )
            : Center(
              child: Wrap(
                spacing: 10.w,
                children:
                    tabs.map((tab) {
                      return TabButton(
                        height: 36.h,
                        label: tab["label"],
                        useFixedWidth: false,
                        isSelected: tab["selected"],
                        onPressed: () {},
                        selectedColor: blueColor,
                        unselectedColor: Colors.white,
                        selectedTextColor: Colors.white,
                        unselectedTextColor: titleColor,
                        selectedBorderColor: Colors.transparent,
                        unselectedBorderColor: containerBorderLight,
                      );
                    }).toList(),
              ),
            ),

        SizedBox(height: 16.h),
        if (checkbox!) ...[
          CustomCheckbox(
            title: 'Campaign Orders',
            providerKey: 'Campaign Orders',
          ),
          SizedBox(height: 16.h),
        ],

        Consumer<OrdersProvider>(
          builder:
              (context, provider, child) => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.orderList.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) {
                  final ad = provider.orderList[index];
                  return GestureDetector(
                    onTap:
                        () => Navigator.pushNamed(
                          context,
                          OnWayOrderDetailsScreen.id,
                        ),
                    child: OrderCard(
                      orderId: ad["id"]!,
                      placedDate: ad["placedDate"]!,
                      onTap: () {},
                    ),
                  );
                },
              ),
        ),
      ],
    );
  }
}
