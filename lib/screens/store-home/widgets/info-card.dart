import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';
import 'info-column.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 344,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: cardBorder, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 74,
                  width: 84,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: containerBorderLight, width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(uMark, height: 40, width: 40),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Burger Home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),

                    Text(
                      "Burgers, Pizza",
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        SvgPicture.asset(starIcon, height: 16, width: 16),
                        Text(
                          " 4.8 (135 ratings)",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: containerColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(soundIcon, height: 26, width: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InfoColumn(
                  titleColor: titleColor,
                  labelColor: blueColor,
                  icon: SvgPicture.asset(basketIcon, height: 16, width: 16),
                  title: "Free",
                  label: "Delivery fee",
                ),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    color: verticalDividerColor,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),

                InfoColumn(
                  titleColor: titleColor,
                  labelColor: blueColor,
                  icon: SvgPicture.asset(clockIcon, height: 16, width: 16),
                  title: "32 min",
                  label: "Delivery time",
                ),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    color: verticalDividerColor,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),

                InfoColumn(
                  labelColor: blueColor,
                  titleColor: redColor,
                  icon: SvgPicture.asset(locationIcon, height: 16, width: 16),
                  title: "View",
                  label: "Location",
                ),
              ],
            ),
            Divider(color: verticalDividerColor, thickness: 1, height: 20),
            const SizedBox(height: 18),
            Center(
              child: Text(
                "10% Off for all products only for tonight",
                style: TextStyle(
                  color: greenColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
