import 'package:burger_home/screens/store-home/alerts/alerts.dart';
import 'package:burger_home/screens/store-home/widgets/custom-popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';
import '../../more & store management/low-stock/alerts/alerts.dart';

class ProductGridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final bool? stock;

  const ProductGridItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.stock = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 164.w,
          height: 120.h,
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
              stock!
                  ? Positioned(
                    bottom: 6,
                    right: 8,
                    child: InkWell(
                      onTap: () => showAddStockAlert(context),
                      child: SvgPicture.asset(
                        addContainer,
                        width: 24.w,
                        height: 24.h,
                      ),
                    ),
                  )
                  : Positioned(
                    bottom: 4.h,
                    right: 4.w,
                    child: InkWell(
                      onTapDown: (details) {
                        final productCenter = Offset(
                          details.globalPosition.dx - 60,
                          details.globalPosition.dy - -90,
                        );

                        CustomPopup.show(
                          context,
                          productCenter,
                          actions: [
                            PopupActionItem(
                              iconPath: editIcon,
                              label: 'Edit',
                              textColor: greenColor,
                              onTap: () {},
                            ),
                            PopupActionItem(
                              iconPath: deleteIcon,
                              label: 'Delete',
                              textColor: deleteColor,
                              onTap:
                                  () => showDeleteAlert(
                                    context,
                                    'Are you sure you want to delete this item?',
                                    () {},
                                  ),
                            ),
                          ],
                        );
                      },
                      child: SvgPicture.asset(
                        moreContainer,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
              if (stock!)
                Positioned(
                  top: 6.h,
                  left: 8.w,
                  child: Container(
                    height: 25.h,
                    width: 25.w,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: deleteColor,
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
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
