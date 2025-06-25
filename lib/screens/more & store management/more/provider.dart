import 'package:burger_home/screens/business,%20expenses/change-pass/change-pass.dart';
import 'package:burger_home/screens/more%20&%20store%20management/more/widgets/alerts/alerts.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/constants.dart';

class MoreScreenProvider extends ChangeNotifier {
  List<Map<String, dynamic>> storeManagementItems(BuildContext context) => [
    {'title': 'Add Item', 'icon': addCircle, 'onTap': () {}},
    {'title': 'Pending Items', 'icon': infoCircle, 'onTap': () {}},
    {'title': 'Categories', 'icon': categoriesCircle, 'onTap': () {}},
    {'title': 'Addons', 'icon': addonsCircle, 'onTap': () {}},
    {'title': 'Low Stock', 'icon': lowStockCircle, 'onTap': () {}},
    {'title': 'Reviews', 'icon': starCircle, 'onTap': () {}},
    {'title': 'Conversations', 'icon': chatCircle, 'onTap': () {}},
  ];

  List<Map<String, dynamic>> marketingAdsItems(BuildContext context) => [
    {'title': 'Banner', 'icon': bannerCircle, 'onTap': () {}},
    {'title': 'Advertisement', 'icon': advertisementCircle, 'onTap': () {}},
    {'title': 'Campaign', 'icon': campaignCircle, 'onTap': () {}},
    {'title': 'Coupon', 'icon': couponCircle, 'onTap': () {}},
  ];

  List<Map<String, dynamic>> businessReportsItems(BuildContext context) => [
    {'title': 'My Business Plan', 'icon': planCircle, 'onTap': () {}},
    {'title': 'Expense Report', 'icon': expenseCircle, 'onTap': () {}},
  ];

  List<Map<String, dynamic>> settingsItems(BuildContext context) => [
    {
      'title': 'Change Password',
      'icon': passCircle,
      'onTap': () => Navigator.pushNamed(context, ChangePassScreen.id),
    },
    {
      'title': 'Language',
      'icon': languageCircle,
      'onTap': () => showLanguageAlert(context),
    },
    {'title': 'Help & Support', 'icon': helpCircle, 'onTap': () {}},
    {'title': 'Privacy Policy', 'icon': helpCircle, 'onTap': () {}},
    {'title': 'Terms & Conditions', 'icon': termsCircle, 'onTap': () {}},
  ];
}
