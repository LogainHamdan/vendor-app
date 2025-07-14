import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/ad-details.dart';
import 'package:burger_home/screens/announcement/announcement.dart';
import 'package:burger_home/screens/business,%20expenses/change-pass/change-pass.dart';
import 'package:burger_home/screens/business,%20expenses/change-plan/change-plan.dart';
import 'package:burger_home/screens/business,%20expenses/expense-report/expense-report.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/help,%20support.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/terms-conditions/terms-conditions.dart';
import 'package:burger_home/screens/business,%20expenses/my-business-plan/my-business-plan.dart';
import 'package:burger_home/screens/business,%20expenses/privacy-policy/privacy-policy.dart';
import 'package:burger_home/screens/business,%20expenses/shift-in-this-plan/shift-in-this-plan.dart';
import 'package:burger_home/screens/edit-item/edit-item.dart';
import 'package:burger_home/screens/home%20&%20wallet/confirmed-order-details/confirmed-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/cooking-order-details/cooking-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/delivered-order-details/delivered-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/handover-order-details/handover-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/home/home-screen.dart';
import 'package:burger_home/screens/home%20&%20wallet/notfications/notifications.dart';
import 'package:burger_home/screens/home%20&%20wallet/on-way-order-details/on-way-order-details.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/orders.dart';
import 'package:burger_home/screens/home%20&%20wallet/pending-order-details/pending-order-details.dart';
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
import 'package:burger_home/screens/more%20&%20store%20management/edit-coupon/edit-coupon.dart';
import 'package:burger_home/screens/more%20&%20store%20management/live-chat/live-chat.dart';
import 'package:burger_home/screens/more%20&%20store%20management/low-stock/low-stock.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/more.dart';
import 'package:burger_home/screens/more%20&%20store%20management/personal-care/personal-care.dart';
import 'package:burger_home/screens/more%20&%20store%20management/profile/profile.dart';
import 'package:burger_home/screens/more%20&%20store%20management/reviews/reviews.dart';
import 'package:burger_home/screens/starting/forgot-pass/forgot-pass.dart';
import 'package:burger_home/screens/starting/sign-in/sign-in.dart';
import 'package:burger_home/screens/starting/splash/splash.dart';
import 'package:burger_home/screens/starting/vendor-registartion/registration.dart';
import 'package:burger_home/screens/starting/vendor-registartion/steps/congrats.dart';
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
            appBarTheme: AppBarTheme(
              color: Colors.white,
              scrolledUnderElevation: 0,
              centerTitle: true,
            ),
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
            CreateAdScreen.id: (context) => CreateAdScreen(),
            AnnouncementScreen.id: (context) => AnnouncementScreen(),
            EditItemScreen.id: (context) => EditItemScreen(),
            CategoriesScreen.id: (context) => CategoriesScreen(),
            CategoryProductsScreen.id: (context) => CategoryProductsScreen(),
            ProfileScreen.id: (context) => ProfileScreen(),
            AddonsScreen.id: (context) => AddonsScreen(),
            LowStockScreen.id: (context) => LowStockScreen(),
            ChatsScreen.id: (context) => ChatsScreen(),
            ReviewsScreen.id: (context) => ReviewsScreen(),
            BannersScreen.id: (context) => BannersScreen(),
            LiveChatScreen.id: (context) => LiveChatScreen(),
            AdDetailsScreen.id: (context) => AdDetailsScreen(),
            AdvertisementScreen.id: (context) => AdvertisementScreen(),
            EditAdScreen.id: (context) => EditAdScreen(),
            CouponMoreScreen.id: (context) => CouponMoreScreen(),
            CouponMore2Screen.id: (context) => CouponMore2Screen(),
            EditCouponScreen.id: (context) => EditCouponScreen(),
            SplashScreen.id: (context) => SplashScreen(),
            ForgotPassScreen.id: (context) => ForgotPassScreen(),
            SignInScreen.id: (context) => SignInScreen(),
            RegistrationScreen.id: (context) => RegistrationScreen(),
            CongratulationsScreen.id: (context) => CongratulationsScreen(),
            NotificationsScreen.id: (context) => NotificationsScreen(),
            ConfirmedOrderDetailsScreen.id:
                (context) => ConfirmedOrderDetailsScreen(),
            PendingOrderDetailsScreen.id:
                (context) => PendingOrderDetailsScreen(),
            CookingOrderDetailsScreen.id:
                (context) => CookingOrderDetailsScreen(),
            HandoverOrderDetailsScreen.id:
                (context) => HandoverOrderDetailsScreen(),
            OnWayOrderDetailsScreen.id: (context) => OnWayOrderDetailsScreen(),
            DeliveredOrderDetailsScreen.id:
                (context) => DeliveredOrderDetailsScreen(),
            MyBusinessPlanScreen.id: (context) => MyBusinessPlanScreen(),
            ChangePlanScreen.id: (context) => ChangePlanScreen(),
            ShiftInThisPlanScreen.id: (context) => ShiftInThisPlanScreen(),
            ExpenseReportScreen.id: (context) => ExpenseReportScreen(),
            ChangePassScreen.id: (context) => ChangePassScreen(),
            HelpAndSupportScreen.id: (context) => HelpAndSupportScreen(),
            PrivacyPolicyScreen.id: (context) => PrivacyPolicyScreen(),
            TermsConditionsScreen.id: (context) => TermsConditionsScreen(),
          },
        );
      },
    );
  }
}
