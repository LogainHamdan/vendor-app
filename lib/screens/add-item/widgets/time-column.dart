import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeColumn extends StatelessWidget {
  final String title;
  final List<String> options;
  final int selectedIndex;

  const TimeColumn({
    Key? key,
    required this.title,
    required this.options,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 8.h),
        Column(
          children:
              options.asMap().entries.map((entry) {
                int index = entry.key;
                String value = entry.value;
                bool isSelected = index == selectedIndex;
                return Container(
                  width: 60.w,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  margin: EdgeInsets.symmetric(vertical: 4.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFF9E5E5) : Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color:
                          isSelected
                              ? const Color(0xFF7F001D)
                              : Colors.grey[300]!,
                    ),
                  ),
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color:
                          isSelected ? const Color(0xFF7F001D) : Colors.black87,
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
