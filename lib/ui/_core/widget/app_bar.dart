import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/_core/widget/icon_button.dart';
import 'package:tech_taste/ui/checkout/checkout_screen.dart';

AppBar getAppBar({required BuildContext context, String? tile}) {
  BagProvider bagProvider = Provider.of<BagProvider>(context);

  return AppBar(
    title: tile != null ? Text(tile) : null,
    centerTitle: true,
    actions: [
      badges.Badge(
        showBadge: bagProvider.dishesOnBag.isNotEmpty,
        position: badges.BadgePosition.bottomStart(),
        badgeContent: Text(bagProvider.dishesOnBag.length.toString(), style: const TextStyle(fontSize: 10)),
        child: IconButtonUi(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckoutScreen())),
          iconData: Icons.shopping_basket,
        ),
      ),
    ],
  );
}
