import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../provider.dart';

class CustomCheckbox extends StatelessWidget {
  final String title;
  final String providerKey;

  const CustomCheckbox({
    Key? key,
    required this.title,
    required this.providerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isChecked = context.watch<AddItemProvider>().isChecked(providerKey);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => context.read<AddItemProvider>().toggleCheck(providerKey),
          child: Container(
            width: 15.w,
            height: 15.h,
            decoration: BoxDecoration(
              color: isChecked ? Colors.black : Colors.transparent,
              border: Border.all(color: titleColor, width: 2.w),
            ),
            child:
                isChecked
                    ? Icon(Icons.check, color: Colors.white, size: 16.sp)
                    : null,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: titleColor,
          ),
        ),
      ],
    );
  }
}
