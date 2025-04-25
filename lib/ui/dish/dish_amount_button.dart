import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/model/dishes.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';

import '../_core/widget/icon_button.dart';

class DishAmountButton extends StatefulWidget {
  const DishAmountButton({super.key, required this.dish});
  final Dish dish;

  @override
  State<DishAmountButton> createState() => _DishAmountButtonState();
}

class _DishAmountButtonState extends State<DishAmountButton> {
  int localAmount = 0;
  bool wasAddedToBag = false;

  void increment(BagProvider bagProvider) {
    setState(() => localAmount++);
    if (wasAddedToBag) {
      bagProvider.addDish(widget.dish);
    }
  }

  void decrement(BagProvider bagProvider) {
    if (localAmount > 0) {
      setState(() => localAmount--);
      if (wasAddedToBag) {
        bagProvider.removeDish(widget.dish);
        if (localAmount == 0) {
          wasAddedToBag = false;
        }
      }
    }
  }

  void confirmAdd(BagProvider bagProvider) {
    if (localAmount > 0) {
      bagProvider.removeDishAmount(widget.dish, amount: bagProvider.totalItems);
      bagProvider.addDish(widget.dish, amount: localAmount);
      wasAddedToBag = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context);
    return Column(
      spacing: 12,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButtonUi(onTap: () => increment(bagProvider), iconData: Icons.arrow_drop_up),
              Text(context.tr.dishAmountCount(localAmount), style: AppTextStyles.quantity),
              IconButtonUi(onTap: () => decrement(bagProvider), iconData: Icons.arrow_drop_down),
            ],
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            child: Text(context.tr.dishAmountAddButton, style: const TextStyle(fontSize: 16)),
            onPressed: () => confirmAdd(bagProvider),
          ),
        ),
      ],
    );
  }
}
