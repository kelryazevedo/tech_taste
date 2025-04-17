import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sacola'),
        actions: [TextButton(onPressed: () => bagProvider.clearBag(), child: const Text('Limpar'))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8.0,
            children: [
              const Text('Pedidos', textAlign: TextAlign.center),
              Column(
                children: List.generate(bagProvider.getMapDishAmount().keys.length, (index) {
                  final dish = bagProvider.getMapDishAmount().keys.toList()[index];
                  return ListTile(
                    leading: Image.asset('assets/dishes/default.png'),
                    title: Text(dish.name),
                    subtitle: Text('R\$: ${dish.price.toStringAsFixed(2)}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () => bagProvider.removeDish(dish: dish), icon: const Icon(Icons.remove)),
                        Text(bagProvider.getMapDishAmount()[dish].toString(), style: const TextStyle(fontSize: 18)),
                        IconButton(
                          onPressed: () => bagProvider.addAllDishes(dishes: [dish]),
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
