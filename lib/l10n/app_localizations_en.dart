// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get splashTitle => 'An innovative partner for your';

  @override
  String get splashDescription => 'Best culinary experience!';

  @override
  String get splashButtonStart => 'Let\'s go!';

  @override
  String get restaurantRecommendations => 'Favorites';

  @override
  String restaurantCardDishName(String name) {
    return '$name';
  }

  @override
  String restaurantCardPrice(String price) {
    return 'R\\\$ $price';
  }

  @override
  String restaurantCardDescription(String description) {
    return '$description';
  }

  @override
  String get homeWelcome => 'Welcome!';

  @override
  String get homeSearchLabel => 'What do you want to eat?';

  @override
  String get homeCategoryTitle => 'Choose by category';

  @override
  String get homeBestRatedTitle => 'Top rated';

  @override
  String categoryItem(String category) {
    return '$category';
  }

  @override
  String restaurantDistance(String distance) {
    return '$distance km away';
  }

  @override
  String dishPrice(String price) {
    return 'Price: R\\\$ $price';
  }

  @override
  String dishName(String name) {
    return '$name';
  }

  @override
  String dishDescription(String description) {
    return '$description';
  }

  @override
  String get dishAmountAddButton => 'Add';

  @override
  String dishAmountCount(int count) {
    return '$count';
  }

  @override
  String get checkoutTitle => 'Bag';

  @override
  String get checkoutClearButton => 'Clear';

  @override
  String get checkoutOrdersTitle => 'Orders';

  @override
  String get addressCardTitle => 'Deliver to address:';

  @override
  String get addressCardStreet => '28 Acácias Street';

  @override
  String get addressCardComplement => 'House 10';

  @override
  String get confirmOrderTitle => 'Order:';

  @override
  String get confirmOrderLabelDelivery => 'Delivery:';

  @override
  String get confirmOrderLabelTotal => 'Total:';

  @override
  String get confirmOrderButton => 'Place Order';

  @override
  String get paymentTitle => 'Payment';
}
