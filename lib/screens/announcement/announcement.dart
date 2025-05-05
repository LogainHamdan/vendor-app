import 'package:burger_home/screens/ad-details/widgets/custm-switch-tile.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class AnnouncementScreen extends StatefulWidget {
  @override
  _AnnouncementScreenState createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  bool isEnabled = true;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Announcement'),
      body: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSwitchTile(
                  title: 'Announcement content',
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  hint: 'Type announcement',
                  height: 124.h,
                  width: 344.w,
                  maxLines: 5,
                  borderColor: containerBorderLight,
                ),

                SizedBox(height: 16.h),
                CustomElevatedButton(
                  text: 'Publish',
                  onPressed: () {},
                  color: burgundyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
