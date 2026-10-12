import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/category_item.dart';
import 'package:flutter/material.dart';

/// Category gulo arc er moto uporer niche position kore
class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  // Prottek item er top offset (arc effect)
  static const _offsets = <double>[75, 35, 20, 60];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (i) => Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: _offsets[i % _offsets.length]),
              child: CategoryItem(category: categories[i], index: i),
            ),
          ),
        ),
      ),
    );
  }
}