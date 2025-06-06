import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';

class CategoryWidget extends StatelessWidget {
  final String category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: AppColors.lightBackgroundColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/categories/${category.toLowerCase()}.png', height: 48),
          Text(
            context.tr.categoryItem(category),
            style: AppTextStyles.description.copyWith(overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
