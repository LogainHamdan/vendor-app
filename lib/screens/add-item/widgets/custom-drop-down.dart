import 'package:burger_home/screens/add-item/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
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
    this.width = 344,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddItemProvider>(context);
    final selectedValue = provider.getValue(providerKey);

    return SizedBox(
      width: width?.w,
      height: 54.h,
      child: GestureDetector(
        onTap: () {
          provider.toggleExpanded(); // Toggle expanded state when clicked
        },
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          items:
              items.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
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
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              provider.isExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          iconEnabledColor: Colors.transparent,
        ),
      ),
    );
  }
}
