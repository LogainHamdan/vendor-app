import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/widgets/orders-section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Orders'),

      body: CustomParentContainer(
        children: [
          SizedBox(height: 16.h),
          Consumer<OrdersProvider>(
            builder:
                (context, provider, child) =>
                    OrdersSection(allTypes: false, tabs: provider.orderTabs),
          ),
        ],
      ),
    );
  }
}
