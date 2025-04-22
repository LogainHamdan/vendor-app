import 'package:burger_home/screens/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPopup {
  static void show(
    BuildContext context,
    Offset position, {
    double width = 164,
    double height = 102,
    VoidCallback? onEdit,
    VoidCallback? onDelete,
  }) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final double left = position.dx - width / 2;
    final double top = position.dy - height;
    final double right = overlay.size.width - position.dx - width / 2;
    final double bottom = overlay.size.height - position.dy;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        left.clamp(0, overlay.size.width - width),
        top.clamp(0, overlay.size.height - height),
        right.clamp(0, overlay.size.width),
        bottom.clamp(0, overlay.size.height),
      ),
      constraints: BoxConstraints(
        minWidth: width,
        maxWidth: width,
        minHeight: height,
        maxHeight: height,
      ),
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: containerBorderLight, width: 1),
      ),
      shadowColor: Colors.black.withOpacity(0.08),
      menuPadding: EdgeInsets.all(8),
      items: [
        PopupMenuItem(
          value: 'edit',
          height: height / 2,
          child: Row(
            children: [
              SvgPicture.asset(editIcon, height: 26, width: 26),
              const SizedBox(width: 8),
              Text('Edit', style: TextStyle(color: greenColor, fontSize: 14)),
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
              Text(
                'Delete',
                style: TextStyle(color: deleteColor, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'edit') onEdit?.call();
      if (value == 'delete') onDelete?.call();
    });
  }
}
