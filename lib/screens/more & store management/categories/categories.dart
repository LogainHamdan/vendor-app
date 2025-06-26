import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/widgets/alerts/alerts.dart';
import 'package:burger_home/screens/more%20&%20store%20management/categories/widgets/category-container.dart';
import 'package:burger_home/screens/more%20&%20store%20management/personal-care/personal-care.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../edit-item/widgets/draggable-button.dart';
import 'data.dart';

class CategoriesScreen extends StatelessWidget {
  static const id = '/categories';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DraggableButton(
        title: 'Add New Category',
        onPressed: () => showAddCategoryAlert(context),
      ),
      appBar: CustomAppBar(title: 'Categories'),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap:
                  () => Navigator.pushNamed(context, CategoryProductsScreen.id),
              child: CategoryContainer(
                image: category['img']!,
                title: category['title']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
