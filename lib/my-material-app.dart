import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/ad-details.dart';
import 'package:burger_home/screens/announcement/announcement.dart';
import 'package:burger_home/screens/edit-item/edit-item.dart';
import 'package:burger_home/screens/main/ui/screens/main_screen.dart';
import 'package:burger_home/screens/more%20&%20store%20management/ad-details-more-2/ad-details-more-2.dart';
import 'package:burger_home/screens/more%20&%20store%20management/ad-details/ad-details.dart';
import 'package:burger_home/screens/more%20&%20store%20management/addons/addons.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/advertisement.dart';
import 'package:burger_home/screens/more%20&%20store%20management/banners/banners.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/categories.dart';
import 'package:burger_home/screens/more%20&%20store%20management/conversations/conversations.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more-2/coupon-more-2.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more/coupon-more.dart';
import 'package:burger_home/screens/more%20&%20store%20management/live-chat/live-chat.dart';
import 'package:burger_home/screens/more%20&%20store%20management/low-stock/low-stock.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/more.dart';
import 'package:burger_home/screens/more%20&%20store%20management/personal-care/personal-care.dart';
import 'package:burger_home/screens/more%20&%20store%20management/profile/profile.dart';
import 'package:burger_home/screens/more%20&%20store%20management/reviews/reviews.dart';
import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: GlobalKey<NavigatorState>(),
          debugShowCheckedModeBanner: false,
          title: 'Vendor',
          theme: ThemeData(
            scaffoldBackgroundColor: greyBgColor,
            textTheme: TextTheme(
              bodySmall: GoogleFonts.notoSans(
                fontSize: 12.sp,
                color: Colors.black,
              ),
              bodyMedium: GoogleFonts.notoSans(
                fontSize: 16.sp,
                color: Colors.black,
              ),
              bodyLarge: GoogleFonts.notoSans(
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
          ),
          initialRoute: MainScreen.id,
          routes: {
            MainScreen.id: (context) => MainScreen(),
            AdDetailsScreen.id: (context) => AdDetailsScreen(),
            StoreHomePage.id: (context) => StoreHomePage(),
            AnnouncementScreen.id: (context) => AnnouncementScreen(),
            EditItemScreen.id: (context) => EditItemScreen(),
            CategoriesScreen.id: (context) => CategoriesScreen(),
            MoreScreen.id: (context) => MoreScreen(),
            PersonalCareScreen.id: (context) => PersonalCareScreen(),
            ProfileScreen.id: (context) => ProfileScreen(),
            AddonsScreen.id: (context) => AddonsScreen(),
            LowStockScreen.id: (context) => LowStockScreen(),
            ChatsScreen.id: (context) => ChatsScreen(),
            ReviewsScreen.id: (context) => ReviewsScreen(),
            BannersScreen.id: (context) => BannersScreen(),
            LiveChatScreen.id: (context) => LiveChatScreen(),
            AdDetailsMoreScreen.id: (context) => AdDetailsMoreScreen(),
            AdvertisementScreen.id: (context) => AdvertisementScreen(),
            AdDetailsMore2Screen.id: (context) => AdDetailsMore2Screen(),
            CouponMoreScreen.id: (context) => CouponMoreScreen(),
            CouponMore2Screen.id: (context) => CouponMore2Screen(),
          },
        );
      },
    );
  }
}
