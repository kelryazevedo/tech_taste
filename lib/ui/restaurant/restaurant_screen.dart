import 'package:flutter/material.dart';
import 'package:tech_taste/model/restaurant.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/_core/widget/app_bar.dart';
import 'package:tech_taste/ui/restaurant/restaurant_card_item.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, tile: restaurant.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/${restaurant.imagePath}', width: 160)),
              Text(context.tr.restaurantRecommendations, style: AppTextStyles.title),
              ...restaurant.dishes.map((item) {
                return RestaurantCardItem(item: item);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
