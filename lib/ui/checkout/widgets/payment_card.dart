import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(context.tr.paymentTitle, style: AppTextStyles.title),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(color: AppColors.backgroundCardColor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            spacing: 12,
            children: [
              Image.asset('assets/others/visa.png', width: 40),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('VISA Classic', style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 4),
                    Text('****-0976', style: TextStyle(color: Colors.white60, fontSize: 14)),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(color: Color(0xFFF4A261), shape: BoxShape.circle),
                child: const Icon(Icons.chevron_right, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
