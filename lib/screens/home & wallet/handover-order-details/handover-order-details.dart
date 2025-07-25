import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/home%20&%20wallet/confirmed-order-details/widgets/alerts/alerts.dart';
import 'package:burger_home/screens/home%20&%20wallet/confirmed-order-details/widgets/cook-button.dart';
import 'package:burger_home/screens/more%20&%20store%20management/conversations/conversations.dart';
import 'package:burger_home/screens/more%20&%20store%20management/live-chat/live-chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../pending-order-details/widgets/customer-card.dart';
import '../pending-order-details/widgets/order-card.dart';
import '../pending-order-details/widgets/order-items-container.dart';
import '../pending-order-details/widgets/payment-card.dart';

class HandoverOrderDetailsScreen extends StatelessWidget {
  static const id = '/hand-order-details';

  const HandoverOrderDetailsScreen({super.key});

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
                  status: 'Handover',
                  statusColor: blueColor,
                  orderId: '#12341',
                  orderDate: '24 Mar 2025, 3:24 AM',
                ),
              ),
              CustomerDetailsCard(
                name: 'Mohamed AbuTair',
                address: 'Alquds Street, Lorem Ipsum',
                imageUrl: person,
                onChatPressed:
                    () => Navigator.pushNamed(context, LiveChatScreen.id),
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
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
