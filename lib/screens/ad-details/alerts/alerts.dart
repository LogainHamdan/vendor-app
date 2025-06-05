import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../edit-item/widgets/alert-handle.dart';
import '../../edit-item/widgets/alert-header.dart';
import '../../edit-item/widgets/time-column.dart';

Future<void> showScheduleAlert(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                color: Colors.white,
                elevation: 10.h,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AlertHandle(),
                      AlertHeader(title: "Schedule for Saturday"),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0.w),
                        child: Divider(
                          color: verticalDividerColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TimeColumn(
                              title: "Hour",
                              options: ["6", "7", "8"],
                              selectedIndex: 1,
                            ),
                            SizedBox(width: 24.w),
                            SvgPicture.asset(verticalPoints),
                            SizedBox(width: 24.w),
                            TimeColumn(
                              title: "Minute",
                              options: ["9", "10", "11"],
                              selectedIndex: 2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      CustomElevatedButton(
                        text: 'Save',
                        onPressed: () {},
                        color: burgundyColor,
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: 16,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(closeIcon, height: 32.h, width: 32.w),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showTimeStartAlert(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                color: Colors.white,
                elevation: 20.h,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AlertHandle(),
                    AlertHeader(title: "Available Time Starts"),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 24.0.h,
                        horizontal: 24.w,
                      ),
                      child: Divider(color: verticalDividerColor, thickness: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TimeColumn(
                            title: "Format",
                            options: ["PM", "AM"],
                            selectedIndex: 1,
                          ),
                          SizedBox(width: 16.w),
                          TimeColumn(
                            title: "Hour",
                            options: ["6", "7","6", "7","6", "7",],
                            selectedIndex: 0,
                          ),
                          SizedBox(width: 16.w),

                          TimeColumn(
                            title: "Minute",
                            options: ["9", "10","9", "10","9", "10",],
                            selectedIndex: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomElevatedButton(
                        text: 'Save',
                        onPressed: () {},
                        color: burgundyColor,
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
              Positioned(
                top: -10,
                left: 16,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(closeIcon, height: 32.h, width: 32.w),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
