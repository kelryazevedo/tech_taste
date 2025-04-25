import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 42),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 32,
              children: [
                Image.asset('assets/logo.png', width: 192),
                Column(
                  spacing: 8,
                  children: [
                    Text(
                      context.tr.splashTitle,
                      style: AppTextStyles.title.copyWith(color: AppColors.descriptionColor),
                    ),
                    Text(context.tr.splashDescription, style: AppTextStyles.title.copyWith(color: AppColors.mainColor)),
                  ],
                ),

                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: Text(context.tr.splashButtonStart, style: const TextStyle(fontSize: 16)),
                    onPressed:
                        () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
