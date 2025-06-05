import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/more%20&%20store%20management/personal-care/data.dart';
import 'package:burger_home/screens/store-home/widgets/items-grid-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalCareScreen extends StatelessWidget {
  static const id = '/care';

  const PersonalCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Personal Care'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16.0.h),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SingleChildScrollView(child: ItemsGridView(items: items)),
            ),
          ),
        ),
      ),
    );
  }
}
