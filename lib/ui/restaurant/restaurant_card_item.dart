import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/dish/dish_screen.dart';

class RestaurantCardItem extends StatelessWidget {
  const RestaurantCardItem({super.key, required this.item});

  final Dish item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DishScreen(dish: item))),
      child: Card(
        color: AppColors.backgroundCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.only(bottom: 12),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                child: Image.asset('assets/dishes/default.png', fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.tr.restaurantCardDishName(item.name), style: AppTextStyles.title),
                    Text(context.tr.restaurantCardPrice(item.price.toStringAsFixed(2)), style: AppTextStyles.price),
                    Text(context.tr.restaurantCardDescription(item.description), style: AppTextStyles.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
