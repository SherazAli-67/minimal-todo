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
      padding: .all(21),
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: .circular(20),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            category.name,
            style: AppTextStyles.categoryTitle,
          ),
          const SizedBox(height: 8),
          Text(
            category.taskCountLabel,
            style: AppTextStyles.categoryCount,
          ),
        ],
      ),
    );
  }
}
