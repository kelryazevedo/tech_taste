import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';

class BagProvider extends ChangeNotifier {
  List<Dish> dishesOnBag = [];

  void addAllDishes({required List<Dish> dishes}) {
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  void removeDish({required Dish dish}) {
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  void clearBag() {
    dishesOnBag.clear();
    notifyListeners();
  }

  Map<Dish, int> getMapDishAmount() {
    Map<Dish, int> results = {};
    for (Dish dish in dishesOnBag) {
      if (results[dish] == null) {
        results[dish] = 1;
      } else {
        results[dish] = results[dish]! + 1;
      }
    }
    return results;
  }
}
