import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/user.jpg")),
          title: Text(
            "Great Food and Service",
            style: TextStyle(
              color: Color(0xFF2B3141),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                children: List.generate(
                  5,
                  (index) => SvgPicture.asset(
                    'assets/Star.svg',
                    height: 14,
                    width: 14,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
              ),
            ],
          ),
          trailing: Text(
            "20/12/2020",
            style: TextStyle(fontSize: 12, color: Color(0xFF6C7278)),
          ),
        ),
      ],
    );
  }
}
