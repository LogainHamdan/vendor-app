import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../announcement/widgets/custom-elevated-button.dart';

class DraggableButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Widget? icon;
  final bool? button;
  final Widget? child;
  final bool? outlined;

  const DraggableButton({
    super.key,
    this.title,
    this.onPressed,
    this.icon,
    this.button = true,
    this.child,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87.h,
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        minChildSize: 0.4,
        maxChildSize: 1.0,
        builder: (context, scrollController) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 6.r,
                  spreadRadius: 2.r,
                ),
              ],
            ),
            child:
                button!
                    ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 16.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomElevatedButton(
                            text: title ?? '',
                            outlined: outlined,
                            onPressed: onPressed ?? () {},
                            color: outlined! ? Colors.white : burgundyColor,
                          ),
                        ),
                      ],
                    )
                    : child,
          );
        },
      ),
    );
  }
}
