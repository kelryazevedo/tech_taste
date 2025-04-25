import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/ui/_core/app_theme.dart';
import 'package:tech_taste/ui/_core/bag_provider.dart';
import 'package:tech_taste/ui/splash/splash_screen.dart';

import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurants();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => restaurantData),
        ChangeNotifierProvider(create: (context) => BagProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      /*  localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('es'), Locale('pt')],*/
      home: const SplashScreen(),
    );
    // return MaterialApp(theme: AppTheme.appTheme, debugShowCheckedModeBanner: false, home: const SplashScreen());
  }
}
