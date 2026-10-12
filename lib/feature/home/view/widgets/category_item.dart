import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends GetView<HomeController> {
  final CategoryModel category;
  final int index;

  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.selectCategory(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() {
            final selected = controller.selectedCategory.value == index;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 64,
              width: 64,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: selected ? Colors.amber : Colors.transparent,
                  width: 3,
                ),
              ),
              child: Image.asset(
                category.image,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.coffee_outlined,
                  color: Color(0xFFC89B6D),
                ),
              ),
            );
          }),
          const SizedBox(height: 6),
          Text(
            category.name.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}