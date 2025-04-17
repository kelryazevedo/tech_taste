import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/categories_data.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/ui/_core/widget/app_bar.dart';
import 'package:tech_taste/ui/home/widgets/category_widget.dart';
import 'package:tech_taste/ui/home/widgets/restaurant_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurantData = Provider.of<RestaurantData>(context).listRestaurant;

    return Scaffold(
      drawer: Drawer(),
      appBar: getAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 146)),
              const Text('Boas-vindas!', style: TextStyle(color: Colors.white, fontSize: 16)),
              TextFormField(),
              const Text('Escolha por categoria', style: TextStyle(color: Colors.white, fontSize: 20)),
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
              const Text('Bem avaliados', style: TextStyle(color: Colors.white, fontSize: 16)),
              Column(
                spacing: 16,
                children: List.generate(restaurantData.length, (index) {
                  return RestaurantWidget(restaurant: restaurantData[index]);
                }),
              ),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
