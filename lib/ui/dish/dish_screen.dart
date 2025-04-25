import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';
import 'package:tech_taste/ui/_core/widget/app_bar.dart';
import 'package:tech_taste/ui/dish/dish_amount_button.dart';
import 'package:tech_taste/ui/dish/dish_details.dart';

class DishScreen extends StatelessWidget {
  const DishScreen({super.key, required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, tile: dish.name),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    child: Image.asset('assets/dishes/default.png', fit: BoxFit.cover),
                  ),
                  Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [DishDetails(dish: dish), DishAmountButton(dish: dish)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
