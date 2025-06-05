import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/store-home/provider.dart';
import 'package:burger_home/screens/store-home/widgets/info-card.dart';
import 'package:burger_home/screens/store-home/widgets/item-section.dart';
import 'package:burger_home/screens/store-home/widgets/review-section.dart';
import 'package:burger_home/screens/store-home/widgets/tab-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';

class StoreHomePage extends StatelessWidget {
  static const id = '/home';
  const StoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<BurgerHomeProvider>(context);

    return MaterialApp(
      home: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 3,
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_bag),
        //       label: 'Orders',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_balance_wallet),
        //       label: 'Wallet',
        //     ),
        //     BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
        //     BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        //   ],
        // ),
        appBar: CustomAppBar(title: 'Burger Home'),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        burgerCover,
                        height: 178.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: SvgPicture.asset(
                          editIcon,
                          height: 32,
                          width: 32,
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 16,
                        right: 16,
                        child: InfoCard(),
                      ),
                    ],
                  ),
                  SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TabButton(
                          width: 168,

                          label: "All Items",
                          isSelected: tabProvider.showItems,
                          onPressed: () => tabProvider.showAllItems(),
                          selectedColor: blueColor,
                          unselectedColor: Colors.white,
                          selectedTextColor: Colors.white,
                          unselectedTextColor: titleColor,
                          selectedBorderColor: Colors.transparent,
                          unselectedBorderColor: containerBorderLight,
                        ),
                        const SizedBox(width: 10),
                        TabButton(
                          width: 168,
                          label: "Reviews",
                          isSelected: !tabProvider.showItems,
                          onPressed: () => tabProvider.showReviews(),
                          selectedColor: blueColor,
                          unselectedColor: Colors.white,
                          selectedTextColor: Colors.white,
                          unselectedTextColor: titleColor,
                          selectedBorderColor: Colors.transparent,
                          unselectedBorderColor: containerBorderLight,
                        ),
                      ],
                    ),
                  ),

                  tabProvider.showItems
                      ? ItemsSection()
                      : Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: ReviewsSection(),
                      ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: DraggableButton(),
      ),
    );
  }
}
