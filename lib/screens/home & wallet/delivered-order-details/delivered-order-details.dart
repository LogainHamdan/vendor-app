import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/home%20&%20wallet/confirmed-order-details/widgets/alerts/alerts.dart';
import 'package:burger_home/screens/home%20&%20wallet/confirmed-order-details/widgets/cook-button.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/widgets/header-title.dart';
import 'package:burger_home/screens/store-home/widgets/review-section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../pending-order-details/widgets/customer-card.dart';
import '../pending-order-details/widgets/order-card.dart';
import '../pending-order-details/widgets/order-items-container.dart';
import '../pending-order-details/widgets/payment-card.dart';

class DeliveredOrderDetailsScreen extends StatelessWidget {
  static const id = '/deliv-order-details';

  const DeliveredOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Order Details'),

      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomParentContainer(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: OrderCard(
                  status: 'Delivered',
                  statusColor: greenColor,
                  orderId: '#12341',
                  orderDate: '24 Mar 2025, 3:24 AM',
                ),
              ),
              CustomerDetailsCard(
                name: 'Mohamed AbuTair',
                address: 'Alquds Street, Lorem Ipsum',
                imageUrl: person,
                onChatPressed: () {},
              ),

              SizedBox(height: 16.h),

              OrderItemList(),
              SizedBox(height: 16.h),
              PaymentCard(
                hasTotal: true,
                subtotal: '₪ 999.4',
                tax: '₪9384',
                fees: '₪99.3',
                discount: '₪0.00',
                total: '₪10.5',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: CustomTitle(title: 'Order Review'),
              ),

              ReviewsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
