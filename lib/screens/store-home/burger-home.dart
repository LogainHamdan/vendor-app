import 'package:burger_home/screens/store-home/provider.dart';
import 'package:burger_home/screens/store-home/widgets/info-card.dart';
import 'package:burger_home/screens/store-home/widgets/item-section.dart';
import 'package:burger_home/screens/store-home/widgets/review-section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';

class StoreHomePage extends StatelessWidget {
  const StoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<BurgerTabProvider>(context);

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            elevation: 0,

            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,

            centerTitle: true,
            title: Text('Burger Home'),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 16),

                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      burgerCover,
                      height: 178,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: SvgPicture.asset(editIcon, height: 32, width: 32),
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
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            tabProvider.showAllItems();
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,

                            backgroundColor:
                                tabProvider.showItems
                                    ? blueColor
                                    : Colors.white,
                            foregroundColor:
                                tabProvider.showItems
                                    ? Colors.white
                                    : titleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color:
                                    tabProvider.showItems
                                        ? Colors.transparent
                                        : containerBorderLight,
                                width: 1,
                              ),
                            ),
                            minimumSize: Size(168, 40),
                          ),
                          child: Text(
                            "All Items",
                            style: TextStyle(
                              fontWeight:
                                  tabProvider.showItems
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            tabProvider.showReviews();
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                !tabProvider.showItems
                                    ? blueColor
                                    : Colors.white,
                            foregroundColor:
                                !tabProvider.showItems
                                    ? Colors.white
                                    : titleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color:
                                    !tabProvider.showItems
                                        ? Colors.transparent
                                        : containerBorderLight,
                                width: 1,
                              ),
                            ),
                            minimumSize: Size(168, 40),
                          ),
                          child: Text(
                            "Reviews",
                            style: TextStyle(
                              fontWeight:
                                  !tabProvider.showItems
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child:
                      tabProvider.showItems ? ItemsSection() : ReviewsSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
