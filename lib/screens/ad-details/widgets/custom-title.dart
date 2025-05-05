import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CustomTitle extends StatelessWidget {
  final title;
  const CustomTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
    );
  }
}
