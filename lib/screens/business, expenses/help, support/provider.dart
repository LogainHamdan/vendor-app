import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/edit-item/widgets/small-button.dart';
import 'package:burger_home/screens/more%20&%20store%20management/conversations/conversations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpAndSupportProvider extends ChangeNotifier {
  List<Map<String, dynamic>> contactInfo(BuildContext context) => [
    {
      'title': 'Address',
      'icon': locationImg,
      'description': 'Al-Quds Street, near Al-Najah Al-Buraq Commercial Center',
      'suffixIcon': null,
    },
    {
      'title': 'Call Us',
      'icon': callImg,
      'description': '09851515385',
      'suffixIcon': null,
    },
    {
      'title': 'E-mail',
      'icon': messageImg,
      'description': 'Support@wefrhmart.com',
      'suffixIcon': null,
    },
    {
      'title': 'Whatsapp',
      'icon': whatsAppImg,
      'description': '+970 599 505 699',
      'suffixIcon': CustomSmallButton(
        title: 'Text',
        height: 28.h,
        width: 91,
        textColor: Colors.white,
        backgroundColor: greenColor,
        onPressed: () => Navigator.pushNamed(context, ChatsScreen.id),
      ),
    },
    {
      'title': 'Live Chat',
      'icon': headphonesImg,
      'description': 'a live chat with-in the app',
      'suffixIcon': CustomSmallButton(
        width: 91,
        height: 28.h,
        isOutlined: true,
        title: 'Text',
        textColor: blackColor,
        backgroundColor: Colors.white,
        onPressed: () => Navigator.pushNamed(context, ChatsScreen.id),
      ),
    },
  ];
}
