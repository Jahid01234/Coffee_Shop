import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final HomeController controller;

  const CategorySelector({
    super.key,
    required this.controller,
  });

  static const _offsets = <double>[75, 35, 40, 75];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length, (i) => Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: _offsets[i % _offsets.length],
              ),
              child: CategoryItem(
                  controller: controller,
                  category: categories[i],
                  index: i,
              ),
            ),
          ),
        ),
      ),
    );
  }
}