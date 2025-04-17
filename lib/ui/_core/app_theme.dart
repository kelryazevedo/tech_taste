import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (state.contains(WidgetState.pressed)) {
            return const Color.fromARGB(171, 255, 164, 84);
          }
          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
