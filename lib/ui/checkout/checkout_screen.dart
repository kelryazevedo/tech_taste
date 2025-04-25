import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/checkout/widgets/address_card.dart';
import 'package:tech_taste/ui/checkout/widgets/checkout_card_item.dart';
import 'package:tech_taste/ui/checkout/widgets/confirm_order_card.dart';
import 'package:tech_taste/ui/checkout/widgets/payment_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.checkoutTitle, style: const TextStyle(fontSize: 22)),
        actions: [
          TextButton(
            onPressed: () => bagProvider.clearBag(),
            child: Text(context.tr.checkoutClearButton, style: AppTextStyles.action),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(context.tr.checkoutOrdersTitle, style: AppTextStyles.title),
              ...bagProvider.getMapDishAmount().entries.map((entry) {
                return CheckoutCardItem(item: entry, bagProvider: bagProvider);
              }),
              const PaymentCard(),
              const AddressCard(),
              const ConfirmOrderCard(),
            ],
          ),
        ),
      ),
    );
  }
}
