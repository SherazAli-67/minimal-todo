import 'package:flutter/material.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 180,
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: .circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: .all(21),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                Text(
                  category.name,
                  style: AppTextStyles.categoryTitle,
                ),
                Text(
                  category.taskCountLabel,
                  style: AppTextStyles.categoryCount,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(category.image, height: 100,))
        ],
      ),
    );
  }
}
