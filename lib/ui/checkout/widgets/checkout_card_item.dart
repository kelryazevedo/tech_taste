import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/_core/widget/icon_button.dart';

class CheckoutCardItem extends StatelessWidget {
  const CheckoutCardItem({super.key, required this.item, required this.bagProvider});

  final MapEntry<Dish, int> item;
  final BagProvider bagProvider;

  @override
  Widget build(BuildContext context) {
    final dish = item.key;
    final quantity = item.value;
    return Card(
      color: AppColors.backgroundCardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 12),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              child: Image.asset('assets/dishes/default.png', fit: BoxFit.cover, width: 90),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 4.0,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dish.name, style: AppTextStyles.title),
                          Text(context.tr.dishPrice(dish.price.toStringAsFixed(2)), style: AppTextStyles.price),
                        ],
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButtonUi(onTap: () => bagProvider.removeDish(dish), iconData: Icons.arrow_drop_up),
                        Text(quantity.toString(), style: AppTextStyles.quantity),
                        IconButtonUi(onTap: () => bagProvider.addDish(dish), iconData: Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
