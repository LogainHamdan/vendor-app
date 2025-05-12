import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../alert-handle.dart';
import '../alert-header.dart';
import '../time-column.dart';

Future<void> showAvailableTimeAlert(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Material(
            color: Colors.white,
            elevation: 10,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AlertHandle(),
                AlertHeader(title: "Available Time Starts"),
                Divider(color: Colors.grey[300], thickness: 1),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TimeColumn(title: "Format", options: ["AM", "PM"], selectedIndex: 1),
                      TimeColumn(title: "Hour", options: ["6", "7", "8"], selectedIndex: 1),
                      TimeColumn(title: "Minute", options: ["9", "10", "11"], selectedIndex: 2),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7F001D),
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      );
    },
  );
}