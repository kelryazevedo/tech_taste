import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';

import '../_core/app_text_style.dart';

class DishDetails extends StatelessWidget {
  const DishDetails({super.key, required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.tr.dishName(dish.name), style: AppTextStyles.title.copyWith(fontSize: 20)),
          Text(
            context.tr.dishPrice(dish.price.toStringAsFixed(2)).toString(),
            style: AppTextStyles.price.copyWith(fontSize: 18),
          ),
          Text(context.tr.dishDescription(dish.description), style: AppTextStyles.description.copyWith(fontSize: 14)),
        ],
      ),
    );
  }
}
