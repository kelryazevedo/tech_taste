import 'package:flutter/material.dart';
import 'package:tech_taste/model/dishes.dart';

class BagProvider extends ChangeNotifier {
  final List<Dish> _dishes = [];

  List<Dish> get dishesOnBag => List.unmodifiable(_dishes);

  int get totalItems => _dishes.length;

  void addDish(Dish dish, {int amount = 1}) {
    _dishes.addAll(List.filled(amount, dish));
    notifyListeners();
  }

  void removeDish(Dish dish) {
    _dishes.remove(dish);
    notifyListeners();
  }

  void removeDishAmount(Dish dish, {int amount = 1}) {
    int count = 0;
    _dishes.removeWhere((d) {
      if (d == dish && count < amount) {
        count++;
        return true;
      }
      return false;
    });
    if (count > 0) notifyListeners();
  }

  void clearBag() {
    _dishes.clear();
    notifyListeners();
  }

  Map<Dish, int> get groupedDishes {
    final Map<Dish, int> result = {};
    for (var dish in _dishes) {
      result[dish] = (result[dish] ?? 0) + 1;
    }
    return result;
  }

  Map<Dish, int> getMapDishAmount() {
    final Map<Dish, int> result = {};
    for (final dish in _dishes) {
      result[dish] = (result[dish] ?? 0) + 1;
    }
    return result;
  }
}
