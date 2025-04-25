// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get splashTitle => 'Um parceiro inovador para a sua';

  @override
  String get splashDescription => 'Melhor experiência culinária!';

  @override
  String get splashButtonStart => 'Bora!';

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
  String get homeWelcome => 'Boas-vindas!';

  @override
  String get homeSearchLabel => 'O que você quer comer?';

  @override
  String get homeCategoryTitle => 'Escolha por categoria';

  @override
  String get homeBestRatedTitle => 'Bem avaliados';

  @override
  String categoryItem(String category) {
    return '$category';
  }

  @override
  String restaurantDistance(String distance) {
    return '$distance km de distância';
  }

  @override
  String dishPrice(String price) {
    return 'R\\\$ $price';
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
  String get checkoutTitle => 'Sacola';

  @override
  String get checkoutClearButton => 'Limpar';

  @override
  String get checkoutOrdersTitle => 'Pedidos';

  @override
  String get addressCardTitle => 'Entregar no endereço:';

  @override
  String get addressCardStreet => 'Rua das Acácias, 28';

  @override
  String get addressCardComplement => 'Casa 10';

  @override
  String get confirmOrderTitle => 'Pedido:';

  @override
  String get confirmOrderLabelDelivery => 'Entrega:';

  @override
  String get confirmOrderLabelTotal => 'Total:';

  @override
  String get confirmOrderButton => 'Pedir';

  @override
  String get paymentTitle => 'Pagamento';
}
