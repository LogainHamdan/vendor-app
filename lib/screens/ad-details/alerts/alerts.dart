import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/provider.dart';
import 'package:burger_home/screens/announcement/widgets/custom-elevated-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../edit-item/widgets/alert-handle.dart';
import '../../edit-item/widgets/alert-header.dart';
import '../../edit-item/widgets/time-column.dart';

Future<String?> showDeliveryScheduleAlert(BuildContext context) async {
  int selectedHourIndex = 0;
  int selectedMinuteIndex = 0;

  List<String> hours = List.generate(24, (i) => i.toString().padLeft(2, '0'));
  List<String> minutes = List.generate(60, (i) => i.toString().padLeft(2, '0'));

  return await showModalBottomSheet<String>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.pop(context),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Consumer<CreateAdProvider>(
                    builder:
                        (context, provider, child) => Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  "Schedule for Delivery",
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                                SizedBox(height: 24.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TimeColumn(
                                      title: "Hour",
                                      options: hours,
                                      selectedIndex: selectedHourIndex,
                                      onSelect:
                                          (index) => setState(() {
                                            selectedHourIndex = index;
                                          }),
                                    ),
                                    SizedBox(width: 24.w),
                                    TimeColumn(
                                      title: "Minute",
                                      options: minutes,
                                      selectedIndex: selectedMinuteIndex,
                                      onSelect:
                                          (index) => setState(() {
                                            selectedMinuteIndex = index;
                                          }),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.h),
                                CustomElevatedButton(
                                  text: 'Save',
                                  onPressed: () {
                                    final selectedHour =
                                        hours[selectedHourIndex];
                                    final selectedMinute =
                                        minutes[selectedMinuteIndex];
                                    final result =
                                        "$selectedHour hours $selectedMinute minutes";
                                    print(result);
                                    provider.updateEstimatedTime(
                                      amPmFormat: false,
                                      hours: selectedHour,
                                      minutes: selectedMinute,
                                    );
                                    Navigator.pop(
                                      context,
                                      result,
                                    ); // ✅ send back result
                                  },
                                  color: burgundyColor,
                                ),
                                SizedBox(height: 24.h),
                              ],
                            ),
                          ),
                        ),
                  ),
                  Positioned(
                    top: -10,
                    left: 16,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        closeIcon,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

Future<String?> showDailyScheduleAlert(BuildContext context, String day) async {
  int selectedHourIndex = 0;
  int selectedMinuteIndex = 0;
  int selectedAMPmIndex = 0;

  List<String> hours = List.generate(
    12,
    (i) => (i + 1).toString().padLeft(2, '0'),
  );
  List<String> minutes = List.generate(60, (i) => i.toString().padLeft(2, '0'));

  return await showModalBottomSheet<String>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.pop(context),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Consumer<CreateAdProvider>(
                    builder:
                        (context, provider, child) => Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  "Schedule for ${provider.day}",
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                                SizedBox(height: 24.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TimeColumn(
                                      title: "AM/PM",
                                      options: ['AM', 'PM'],
                                      selectedIndex: selectedAMPmIndex,
                                      onSelect: (index) {
                                        setState(() {
                                          selectedAMPmIndex = index;
                                          provider.setAm(index == 0);
                                        });
                                      },
                                    ),
                                    SizedBox(width: 24.w),
                                    TimeColumn(
                                      title: "Hour",
                                      options: hours,
                                      selectedIndex: selectedHourIndex,
                                      onSelect:
                                          (index) => setState(
                                            () => selectedHourIndex = index,
                                          ),
                                    ),
                                    SizedBox(width: 24.w),
                                    TimeColumn(
                                      title: "Minute",
                                      options: minutes,
                                      selectedIndex: selectedMinuteIndex,
                                      onSelect:
                                          (index) => setState(
                                            () => selectedMinuteIndex = index,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.h),
                                CustomElevatedButton(
                                  text: 'Save',
                                  onPressed: () {
                                    final selectedHour =
                                        hours[selectedHourIndex];
                                    final selectedMinute =
                                        minutes[selectedMinuteIndex];
                                    final isAm = selectedAMPmIndex == 0;

                                    provider.setAm(isAm);
                                    provider.updateEstimatedTime(
                                      amPmFormat: true,
                                      hours: selectedHour,
                                      minutes: selectedMinute,
                                    );

                                    Navigator.pop(context, provider.minOrder);
                                  },
                                  color: burgundyColor,
                                ),
                                SizedBox(height: 24.h),
                              ],
                            ),
                          ),
                        ),
                  ),
                  Positioned(
                    top: -10,
                    left: 16,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        closeIcon,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

Future<void> showTimeStartAlert(BuildContext context) async {
  int selectedFormatIndex = 0;
  int selectedHourIndex = 0;
  int selectedMinuteIndex = 0;

  List<String> formatOptions = ["AM", "PM"];
  List<String> hourOptions = List.generate(
    12,
    (i) => (i + 1).toString().padLeft(2, '0'),
  );
  List<String> minuteOptions = List.generate(
    60,
    (i) => i.toString().padLeft(2, '0'),
  );

  await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
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
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.r),
                    ),
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
                          child: Divider(
                            color: verticalDividerColor,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TimeColumn(
                                title: "Format",
                                options: formatOptions,
                                selectedIndex: selectedFormatIndex,
                                onSelect: (index) {
                                  setState(() {
                                    selectedFormatIndex = index;
                                  });
                                },
                              ),
                              SizedBox(width: 16.w),
                              TimeColumn(
                                title: "Hour",
                                options: hourOptions,
                                selectedIndex: selectedHourIndex,
                                onSelect: (index) {
                                  setState(() {
                                    selectedHourIndex = index;
                                  });
                                },
                              ),
                              SizedBox(width: 16.w),
                              TimeColumn(
                                title: "Minute",
                                options: minuteOptions,
                                selectedIndex: selectedMinuteIndex,
                                onSelect: (index) {
                                  setState(() {
                                    selectedMinuteIndex = index;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: CustomElevatedButton(
                            text: 'Save',
                            onPressed: () {
                              final selectedTime =
                                  "${formatOptions[selectedFormatIndex]} ${hourOptions[selectedHourIndex]}:${minuteOptions[selectedMinuteIndex]}";
                              print("Selected time: $selectedTime");
                              Navigator.pop(context);
                            },
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
                      child: SvgPicture.asset(
                        closeIcon,
                        height: 32.h,
                        width: 32.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
