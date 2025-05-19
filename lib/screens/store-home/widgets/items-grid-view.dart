import 'package:burger_home/screens/store-home/widgets/product-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsGridView extends StatelessWidget {
  final List<Map<String, String>> items;
  const ItemsGridView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.95,
        ),
        itemBuilder: (context, index) {
          final item = items[index];
          return ProductGridItem(
            imagePath: item['imagePath']!,
            title: item['title']!,
            price: item['price']!,
          );
        },
      ),
    );
  }
}
