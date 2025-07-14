import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:burger_home/screens/edit-item/widgets/draggable-button.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/provider.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/widgets/ad-card.dart';
import 'package:burger_home/screens/more%20&%20store%20management/advertisement/widgets/ads-section.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/widgets/header-title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../store-home/widgets/tab-button.dart';
import '../ad-details/ad-details.dart';

class AdvertisementScreen extends StatelessWidget {
  static const id = '/ads';

  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomParentContainer(children: [AdsSection()])),
      appBar: CustomAppBar(title: 'Advertisement'),
      bottomNavigationBar: DraggableButton(
        title: 'Add New Ad',
        onPressed: () => Navigator.pushNamed(context, AdDetailsScreen.id),
      ),
    );
  }
}
