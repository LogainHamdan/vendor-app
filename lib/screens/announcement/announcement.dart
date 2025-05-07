import 'package:burger_home/screens/ad-details/widgets/custm-switch-tile.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class AnnouncementScreen extends StatefulWidget {
  static const id = 'announ';
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
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTitle(title: 'Announcement content'),
                    SizedBox(
                      height: 42.h,
                      child: Switch(
                        value: true,
                        activeColor: greenColor,
                        onChanged: (value) {},
                        inactiveTrackColor: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),
                CustomTextField(
                  hint: 'Type announcement',
                  height: 124.h,
                  width: 344.w,
                  maxLines: 5,
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
