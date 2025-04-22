import 'package:burger_home/screens/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPopup {
  static void show(
    BuildContext context,
    Offset position, {
    double width = 157,
    double height = 102,
    VoidCallback? onEdit,
    VoidCallback? onDelete,
  }) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final double left = position.dx;
    final double top = position.dy;
    final double right = overlay.size.width - position.dx;
    final double bottom = overlay.size.height - position.dy;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, right, bottom),
      constraints: BoxConstraints(maxWidth: width, maxHeight: height),
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: containerBorderLight, width: 1),
      ),
      shadowColor: Colors.black.withOpacity(0.08),
      items: [
        PopupMenuItem(
          value: 'edit',
          height: height / 2,
          child: Row(
            children: [
              SvgPicture.asset(editIcon, height: 16, width: 16),
              const SizedBox(width: 8),
              Text('Edit', style: TextStyle(color: greenColor, fontSize: 12)),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          height: height / 2,
          child: Row(
            children: [
              SvgPicture.asset(deleteIcon, height: 16, width: 16),
              const SizedBox(width: 8),
              Text('Delete', style: TextStyle(color: deleteColor)),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'edit') {
        onEdit?.call();
      } else if (value == 'delete') {
        onDelete?.call();
      }
    });
  }
}
