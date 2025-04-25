import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/categories_data.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/ui/_core/app_text_style.dart';
import 'package:tech_taste/ui/_core/context_extensions.dart';
import 'package:tech_taste/ui/_core/widget/app_bar.dart';
import 'package:tech_taste/ui/home/widgets/category_widget.dart';
import 'package:tech_taste/ui/home/widgets/home_drawer.dart';
import 'package:tech_taste/ui/home/widgets/restaurant_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedDrawerItem = 'Menu';

  @override
  Widget build(BuildContext context) {
    final restaurantData = Provider.of<RestaurantData>(context).listRestaurant;

    return Scaffold(
      drawer: HomeDrawer(
        selectedItem: selectedDrawerItem,
        onItemSelected: (value) {
          setState(() {
            selectedDrawerItem = value;
          });
        },
      ),
      appBar: getAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 146)),
              Text(context.tr.homeWelcome, style: AppTextStyles.title.copyWith(fontSize: 22)),
              TextField(
                style: const TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: context.tr.homeSearchLabel,
                  prefixIcon: const Icon(Icons.search, size: 30),
                  hintStyle: const TextStyle(fontSize: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white54),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  labelStyle: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              Text(
                context.tr.homeCategoryTitle,
                style: AppTextStyles.title.copyWith(fontSize: 22, fontWeight: FontWeight.w300),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8.0,
                  children: List.generate(CategoriesData.listCategories.length, (index) {
                    return CategoryWidget(category: CategoriesData.listCategories[index]);
                  }),
                ),
              ),
              Image.asset('assets/banners/banner_promo.png'),
              Text(context.tr.homeBestRatedTitle, style: AppTextStyles.title.copyWith(fontSize: 18)),
              Column(
                spacing: 16,
                children: List.generate(restaurantData.length, (index) {
                  return RestaurantWidget(restaurant: restaurantData[index]);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
