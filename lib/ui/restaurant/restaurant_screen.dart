import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/model/restaurant.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/_core/widget/app_bar.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, tile: restaurant.name),
      body: Center(
        child: Column(
          spacing: 12.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/${restaurant.imagePath}', width: 120),
            const Text("Mais pedidos", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            Column(
              children: List.generate(restaurant.dishes.length, (index) {
                final dish = restaurant.dishes[index];
                return ListTile(
                  leading: Image.asset('assets/dishes/default.png'),
                  title: Text(dish.name),
                  subtitle: Text('R\$: ${dish.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    onPressed: () => context.read<BagProvider>().addAllDishes(dishes: [dish]),
                    icon: const Icon(Icons.add),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
