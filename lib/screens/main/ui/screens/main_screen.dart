import 'package:burger_home/screens/main/ui/screens/provider.dart';
import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';

class MainScreen extends StatelessWidget {
  static const id = '/';

  MainScreen({super.key});

  final List<String> icons = [
    storeIcon,
    ordersIcon,
    walletIcon,
    homeIcon,
    moreIcon,
  ];
  final List<Widget> screens = const [
    StoreHomePage(),
    StoreHomePage(),
    StoreHomePage(),
    StoreHomePage(),
    StoreHomePage(),
  ];

  final List<String> labels = const [
    "Home",
    "Orders",
    "Wallet",
    "Store",
    "More",
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavProvider = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: screens[bottomNavProvider.currentIndex],
      floatingActionButton: SizedBox(height: 56.h, width: 56.w),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 72.h,
            color: Colors.transparent,
            child: BottomNavigationBar(
              currentIndex: bottomNavProvider.currentIndex,
              onTap: (index) => bottomNavProvider.setIndex(index),
              backgroundColor: Colors.white,

              type: BottomNavigationBarType.fixed,
              selectedItemColor: burgundyColor,
              unselectedItemColor: titleColor,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 14.sp,
              ),
              unselectedLabelStyle: TextStyle(
                color: titleColor,
                fontSize: 14.sp,
              ),
              items: List.generate(icons.length, (index) {
                return BottomNavigationBarItem(
                  icon:
                      index == 3
                          ? Image.asset(
                            icons[index],
                            width: 24.sp,
                            height: 24.sp,
                            color:
                                bottomNavProvider.currentIndex == index
                                    ? burgundyColor
                                    : titleColor,
                          )
                          : SvgPicture.asset(
                            icons[index],
                            width: 24.sp,
                            height: 24.sp,
                            color:
                                bottomNavProvider.currentIndex == index
                                    ? burgundyColor
                                    : titleColor,
                          ),
                  label: labels[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
