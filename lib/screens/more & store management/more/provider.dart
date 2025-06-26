import 'package:burger_home/screens/ad-details/ad-details.dart';
import 'package:burger_home/screens/business,%20expenses/change-pass/change-pass.dart';
import 'package:burger_home/screens/business,%20expenses/expense-report/expense-report.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/help,%20support.dart';
import 'package:burger_home/screens/business,%20expenses/help,%20support/terms-conditions/terms-conditions.dart';
import 'package:burger_home/screens/business,%20expenses/my-business-plan/my-business-plan.dart';
import 'package:burger_home/screens/business,%20expenses/privacy-policy/privacy-policy.dart';
import 'package:burger_home/screens/home%20&%20wallet/pending-order-details/pending-order-details.dart';
import 'package:burger_home/screens/more%20&%20store%20management/addons/addons.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/advertisement.dart';
import 'package:burger_home/screens/more%20&%20store%20management/banners/banners.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/categories.dart';
import 'package:burger_home/screens/more%20&%20store%20management/conversations/conversations.dart';
import 'package:burger_home/screens/more%20&%20store%20management/coupon-more/coupon-more.dart';
import 'package:burger_home/screens/more%20&%20store%20management/low-stock/low-stock.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/alerts/alerts.dart';
import 'package:burger_home/screens/more%20&%20store%20management/reviews/reviews.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/constants.dart';

class MoreScreenProvider extends ChangeNotifier {
  List<Map<String, dynamic>> storeManagementItems(BuildContext context) => [
    {
      'title': 'Add Item',
      'icon': addCircle,
      'onTap': () => Navigator.pushNamed(context, CreateAdScreen.id),
      'isLanguageTile': false,
    },
    {
      'title': 'Pending Items',
      'icon': infoCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, PendingOrderDetailsScreen.id),
    },
    {
      'title': 'Categories',
      'icon': categoriesCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, CategoriesScreen.id),
    },
    {
      'title': 'Addons',
      'isLanguageTile': false,
      'icon': addonsCircle,
      'onTap': () => Navigator.pushNamed(context, AddonsScreen.id),
    },
    {
      'title': 'Low Stock',
      'icon': lowStockCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, LowStockScreen.id),
    },
    {
      'title': 'Reviews',
      'icon': starCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, ReviewsScreen.id),
    },
    {
      'title': 'Conversations',
      'icon': chatCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, ChatsScreen.id),
    },
  ];

  List<Map<String, dynamic>> marketingAdsItems(BuildContext context) => [
    {
      'title': 'Banner',
      'icon': bannerCircle,
      'isLanguageTile': false,
      'onTap': () => Navigator.pushNamed(context, BannersScreen.id),
    },
    {
      'title': 'Advertisement',
      'isLanguageTile': false,
      'icon': advertisementCircle,
      'onTap': () => Navigator.pushNamed(context, AdvertisementScreen.id),
    },
    {
      'title': 'Campaign',
      'icon': campaignCircle,
      'onTap': () {},
      'isLanguageTile': false,
    },

    {
      'isLanguageTile': false,
      'title': 'Coupon',
      'icon': couponCircle,
      'onTap': () => Navigator.pushNamed(context, CouponMoreScreen.id),
    },
  ];

  List<Map<String, dynamic>> businessReportsItems(BuildContext context) => [
    {
      'isLanguageTile': false,
      'title': 'My Business Plan',
      'icon': planCircle,
      'onTap': () => Navigator.pushNamed(context, MyBusinessPlanScreen.id),
    },
    {
      'title': 'Expense Report',
      'isLanguageTile': false,
      'icon': expenseCircle,
      'onTap': () => Navigator.pushNamed(context, ExpenseReportScreen.id),
    },
  ];

  List<Map<String, dynamic>> settingsItems(BuildContext context) => [
    {
      'isLanguageTile': false,
      'title': 'Change Password',
      'icon': passCircle,
      'onTap': () => Navigator.pushNamed(context, ChangePassScreen.id),
    },
    {
      'title': 'Language',
      'isLanguageTile': true,
      'icon': languageCircle,
      'onTap': () => showLanguageAlert(context),
    },
    {
      'isLanguageTile': false,
      'title': 'Help & Support',
      'icon': helpCircle,
      'onTap': () => Navigator.pushNamed(context, HelpAndSupportScreen.id),
    },
    {
      'isLanguageTile': false,
      'title': 'Privacy Policy',
      'icon': helpCircle,
      'onTap': () => Navigator.pushNamed(context, PrivacyPolicyScreen.id),
    },
    {
      'isLanguageTile': false,
      'title': 'Terms & Conditions',
      'icon': termsCircle,
      'onTap': () => Navigator.pushNamed(context, TermsConditionsScreen.id),
    },
  ];
}
