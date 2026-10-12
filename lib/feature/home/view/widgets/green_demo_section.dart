import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/category_selector.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/demo_clipper.dart';

import 'package:coffee_shop_app/feature/home/view/widgets/page_indicator.dart';

import 'package:coffee_shop_app/feature/home/view/widgets/product_infp.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/product_pager.dart';
import 'package:flutter/material.dart';

class GreenDomeSection extends StatelessWidget {
  const GreenDomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DomeClipper(),
      child: Container(
        width: double.infinity,
        color: AppColors.primaryColor,
        child: const Column(
          children: [
            CategorySelector(),
            Expanded(child: ProductPager()),
            ProductInfo(),
            SizedBox(height: 18),
            PageIndicator(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}