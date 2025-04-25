import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';

class ConfirmOrderCard extends StatelessWidget {
  const ConfirmOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundCardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 8,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(context.tr.confirmOrderTitle, style: const TextStyle(color: Colors.white70, fontSize: 16)),
                const Text('R\$ 53,90', style: TextStyle(color: Colors.white70, fontSize: 16)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(context.tr.confirmOrderLabelDelivery, style: const TextStyle(color: Colors.white70, fontSize: 16)),
                const Text('R\$ 6,00', style: TextStyle(color: Colors.white70, fontSize: 16)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.tr.confirmOrderLabelTotal,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Text(
                  'R\$ 59,90',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.account_balance_wallet_outlined, color: Colors.black),
                  label: Text(context.tr.confirmOrderTitle, style: const TextStyle(fontSize: 16, color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
