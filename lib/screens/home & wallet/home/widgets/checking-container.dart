import 'package:burger_home/screens/ad-details/widgets/custm-switch-tile.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-checkbox.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-radio.dart';
import 'package:burger_home/screens/home%20&%20wallet/home/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class checkingContainer extends StatelessWidget {
  final String title;

  const checkingContainer({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Consumer<HomeProvider>(
        builder:
            (context, provider, child) => CustomSwitchTile(
              isBold: true,
              title: 'Restaurant Temporarily Closed',
              value: provider.restClosed,
              onChanged: (value) => provider.toggleRestClosed(value),
            ),
      ),
    );
  }
}
