import 'package:flutter/material.dart';
import 'package:tech_taste/model/restaurant.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/restaurant/restaurant_screen.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RestaurantScreen(restaurant: restaurant)),
          ),
      child: Row(
        spacing: 12,
        children: [
          Image.asset('assets/${restaurant.imagePath}', width: 90),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                context.tr.restaurantCardDishName(restaurant.name),
                style: AppTextStyles.title.copyWith(fontSize: 16),
              ),
              Row(
                children: List.generate(restaurant.stars.toInt(), (index) {
                  return Image.asset('assets/others/star.png');
                }),
              ),
              Text(context.tr.restaurantDistance(restaurant.distance.toString())),
            ],
          ),
        ],
      ),
    );
  }
}
