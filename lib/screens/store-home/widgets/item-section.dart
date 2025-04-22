import 'package:burger_home/screens/constants/constants.dart';
import 'package:burger_home/screens/store-home/widgets/custom-chip.dart';
import 'package:burger_home/screens/store-home/widgets/custom-text-field.dart';
import 'package:burger_home/screens/store-home/widgets/product-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemsSection extends StatelessWidget {
  const ItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Burgers",
      "Fries & Sides",
      "Drinks & Shakes",
      "Burgers",
      "Fries & Sides",
    ];

    final List<Map<String, String>> items = [
      {
        'imagePath': shampoo1,
        'title': 'Dove Nourishin Secrets Hydrating',
        'price': '₪1.50',
      },
      {
        'imagePath': shampoo2,
        'title': 'Vatika Nourishin Secrets Hydrating',
        'price': '₪2.00',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomSearchField(
                          titleColor: titleColor,
                          fillColor: greyBgColor,
                          controller: TextEditingController(),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SvgPicture.asset(addContainer, height: 40, width: 40),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:
                          (context, index) => const SizedBox(width: 10),
                      itemCount: categories.length,
                      itemBuilder:
                          (context, index) => CustomChip(
                            label: categories[index],
                            textColor: titleColor,
                            borderColor: borderColor,
                          ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
