import 'package:burger_home/screens/store-home/widgets/custom-popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';

class ProductGridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const ProductGridItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 164,
          height: 120,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  imagePath,
                  width: 107,
                  height: 107,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: InkWell(
                  onTapDown: (details) {
                    final productCenter = Offset(
                      details.globalPosition.dx - 60,
                      details.globalPosition.dy - -90,
                    );

                    CustomPopup.show(
                      context,
                      productCenter,
                      width: 164,
                      height: 102,
                      onEdit: () {},
                      onDelete: () {},
                    );
                  },
                  child: SvgPicture.asset(moreContainer, width: 40, height: 40),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 164,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
