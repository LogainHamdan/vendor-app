import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionsContainer extends StatelessWidget {
  final bool? noArrow;
  final List<Map<String, dynamic>> items;

  const OptionsContainer({
    super.key,
    required this.items,
    this.noArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children:
            items
                .map(
                  (item) => ListTile(
                    leading: SvgPicture.asset(
                      item['icon'],
                      height: 36.h,
                      width: 36.w,
                    ),
                    title: Text(
                      item['title'],
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing:
                        noArrow!
                            ? SizedBox()
                            : SvgPicture.asset(
                              arrowRight,
                              height: 20.h,
                              width: 20,
                            ),
                    onTap: item['onTap'],
                  ),
                )
                .toList(),
      ),
    );
  }
}
