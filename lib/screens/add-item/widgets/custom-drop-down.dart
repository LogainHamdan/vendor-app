import 'package:burger_home/screens/add-item/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String label;
  final List<String> items;
  final String providerKey;
  final double? width;

  const CustomDropdownFormField({
    required this.label,
    required this.items,
    required this.providerKey,
    super.key,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddItemProvider>(context);
    final selectedValue = provider.getValue(providerKey);

    return SizedBox(
      width: width,
      height: 75.h,
      child: GestureDetector(
        onTap: () {
          provider.toggleExpanded();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.poppins(fontSize: 14.sp, color: blackColor),
            ),
            SizedBox(height: 12.h),
            DropdownButtonFormField<String>(
              value: selectedValue,
              items:
                  items.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                    );
                  }).toList(),
              onChanged: (value) {
                if (value != null) {
                  provider.setValue(providerKey, value);
                }
              },
              decoration: InputDecoration(
                labelText: label,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: titleColor,
                ),
                suffixIcon: Icon(
                  provider.isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: blackColor,
                ),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: cardBorder, width: 0.5),
                  borderRadius: BorderRadius.circular(14),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: cardBorder, width: 0.5),
                  borderRadius: BorderRadius.circular(14),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: cardBorder, width: 0.5),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
              iconEnabledColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
