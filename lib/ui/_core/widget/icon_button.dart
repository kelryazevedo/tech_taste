import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';

class IconButtonUi extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;

  const IconButtonUi({super.key, required this.onTap, required this.iconData});

  @override
  Widget build(BuildContext context) => RawMaterialButton(
    onPressed: onTap,
    fillColor: AppColors.mainColor,
    shape: const CircleBorder(),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    constraints: const BoxConstraints.tightFor(width: 24, height: 24),
    child: Icon(iconData, size: 24, color: Colors.black),
  );
}
