import 'package:burger_home/constants/constants.dart';
import 'package:burger_home/screens/ad-details/provider.dart';
import 'package:burger_home/screens/ad-details/widgets/custm-switch-tile.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-map.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-text-field.dart';
import 'package:burger_home/screens/ad-details/widgets/custom-title.dart';
import 'package:burger_home/screens/ad-details/widgets/schedule-row.dart';
import 'package:burger_home/screens/ad-details/widgets/upload-container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'alerts/alerts.dart';

class AdDetailsScreen extends StatelessWidget {
  static const id = '/details';

  const AdDetailsScreen({super.key});

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final provider = Provider.of<AdDetailsProvider>(context, listen: false);
    final TimeOfDay initialTime = isStart ? provider.start : provider.end;
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null) {
      if (isStart) {
        provider.updateStartTime(picked);
      } else {
        provider.updateEndTime(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AdDetailsProvider>(
      builder:
          (context, provider, child) => Scaffold(
            appBar: CustomAppBar(title: 'Burger Home'),
            body: Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Container(
                color: Colors.white,
                child: Consumer<AdDetailsProvider>(
                  builder:
                      (context, provider, _) => SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                UploadContainer(
                                  title: "Logo",
                                  ratio: '1:1',
                                  image: SvgPicture.asset(uploadContainer),
                                ),
                                SizedBox(width: 16),
                                UploadContainer(
                                  title: "Cover",
                                  ratio: '1:3',
                                  image: SvgPicture.asset(uploadContainer),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),

                            CustomTitle(title: "Main Info"),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Restaurant Name (English)',
                              hint: 'Restaurant Name (English)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Restaurant Name (Arabic)',
                              hint: 'Restaurant Name (Arabic)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Subline (English)',
                              hint: 'Subline (English)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Subline (Arabic)',
                              hint: 'Subline (Arabic)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Mobile Number',
                              hint: 'Mobile Number',
                            ),
                            SizedBox(height: 16.h),

                            CustomTitle(title: 'Location Information'),
                            SizedBox(height: 16.h),

                            CustomMap(assetPath: mapIcon),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Restaurant Address (English)',
                              hint: 'Restaurant Address (English)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Restaurant Address (Arabic)',
                              hint: 'Restaurant Address (Arabic)',
                            ),
                            SizedBox(height: 16.h),

                            CustomTitle(title: 'Preferences'),
                            SizedBox(height: 16.h),

                            CustomSwitchTile(
                              title: 'Delivery',
                              value: provider.delivery,
                              onChanged: provider.toggleDelivery,
                            ),
                            SizedBox(height: 16.h),

                            CustomSwitchTile(
                              title: 'Cutlery',
                              value: provider.cutlery,
                              onChanged: provider.toggleCutlery,
                            ),
                            SizedBox(height: 16.h),

                            CustomSwitchTile(
                              title: 'Take Away',
                              value: provider.takeAway,
                              onChanged:
                                  (value) => provider.toggleTakeAway(value),
                            ),
                            SizedBox(height: 16.h),

                            CustomTextField(
                              label: 'Minimum Order',
                              hint: '50',
                              keyboardType: TextInputType.number,
                              onChanged: provider.updateMinOrder,
                            ),

                            SizedBox(height: 16.h),
                            CustomTextField(
                              label: 'Estimated Delivery Time',
                              hint: '7-10 minutes',
                              keyboardType: TextInputType.number,
                              onChanged: provider.updateMinOrder,
                              suffixIcon: SvgPicture.asset(
                                clockGreen,
                                height: 24,
                                width: 24,
                              ),
                            ),

                            SizedBox(height: 16.h),
                            CustomTitle(title: 'Daily Schedule Time'),
                            ...[
                                  'Saturday',
                                  'Sunday',
                                  'Monday',
                                  'Tuesday',
                                  'Wednesday',
                                  'Thursday',
                                  'Friday',
                                ]
                                .map(
                                  (day) => ScheduleRowWidget(
                                    day: day,
                                    timeRange: "11:00 AM - 8:00 PM",
                                    onAdd: () => showScheduleAlert(context),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                ),
              ),
            ),
          ),
    );
  }
}
