import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScheduleRowWidget extends StatelessWidget {
  final String day;
  final String timeRange;
  final VoidCallback onAdd;

  const ScheduleRowWidget({
    Key? key,
    required this.day,
    required this.timeRange,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: blackColor,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 30,
              width: 108,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: containerBorderLight),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                timeRange,
                style: TextStyle(
                  fontSize: 10,
                  color: titleColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(onTap: onAdd, child: SvgPicture.asset(addGreen)),
        ],
      ),
    );
  }
}
