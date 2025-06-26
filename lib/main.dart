import 'package:burger_home/screens/ad-details/provider.dart';
import 'package:burger_home/screens/business,%20expenses/change-pass/provider.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/provider.dart';
import 'package:burger_home/screens/business,%20expenses/shift-in-this-plan/provider.dart';
import 'package:burger_home/screens/edit-item/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/home/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/notfications/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/orders/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/pending-order-details/provider.dart';
import 'package:burger_home/screens/home%20&%20wallet/wallet/provider.dart';
import 'package:burger_home/screens/main/ui/screens/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/ad-details-more-2/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/banners/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/conversations/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more-2/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/provider.dart';
import 'package:burger_home/screens/starting/sign-in/provider.dart';
import 'package:burger_home/screens/starting/vendor-registartion/provider.dart';
import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:burger_home/screens/store-home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my-material-app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => BurgerHomeProvider()),
        ChangeNotifierProvider(create: (_) => CreateAdProvider()),
        ChangeNotifierProvider(create: (_) => EditItemProvider()),
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => BannersProvider()),
        ChangeNotifierProvider(create: (_) => AdvertisementProvider()),
        ChangeNotifierProvider(create: (_) => AdDetailsMore2Provider()),
        ChangeNotifierProvider(create: (_) => CouponMore2Provider()),
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => RegistrationProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => NotificationsProvider()),
        ChangeNotifierProvider(create: (_) => OrderDetailsProvider()),
        ChangeNotifierProvider(create: (_) => OrdersProvider()),
        ChangeNotifierProvider(create: (_) => WalletProvider()),
        ChangeNotifierProvider(create: (_) => ShiftInThisPlanProvider()),
        ChangeNotifierProvider(create: (_) => MoreScreenProvider()),
        ChangeNotifierProvider(create: (_) => ChangePassProvider()),
        ChangeNotifierProvider(create: (_) => HelpAndSupportProvider()),
      ],

      child: MyMaterialApp(),
    ),
  );
}
