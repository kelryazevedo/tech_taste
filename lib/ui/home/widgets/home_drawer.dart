import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_colors.dart';

class HomeDrawer extends StatefulWidget {
  final String selectedItem;
  final Function(String) onItemSelected;

  const HomeDrawer({super.key, required this.selectedItem, required this.onItemSelected});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final List<String> menuItems = ['Menu', 'Sacola', 'Minha conta'];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundDrawer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                menuItems.map((item) {
                  final isSelected = item == widget.selectedItem;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(40),
                      onTap: () {
                        widget.onItemSelected(item);
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.mainColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 18, color: isSelected ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
