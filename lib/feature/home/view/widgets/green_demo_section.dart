import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/category_selector.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/demo_clipper.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/demo_indicator_painter.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/page_indicator.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/product_info.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/product_pager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GreenDomeSection extends StatelessWidget {
  final HomeController controller;
  final int categoryCount;

  const GreenDomeSection({
    super.key,
    required this.controller,
    this.categoryCount = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: DomeClipper(),
          child: Container(
            width: double.infinity,
            color: AppColors.secondaryColor,
            child: Column(
              children: [
                const SizedBox(height: 10),
                CategorySelector(controller: controller),
                const SizedBox(height: 20),
                Expanded(child: ProductPager(controller: controller)),
                const ProductInfo(),
                const SizedBox(height: 18),
                const PageIndicator(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),

        Positioned.fill(
          child: IgnorePointer(
            child: Obx(() {
              return TweenAnimationBuilder<double>(
                tween: Tween<double>(
                  end: controller.selectedCategory.value.toDouble(),
                ),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                builder: (context, value, _) {
                  return CustomPaint(
                    painter: DomeIndicatorPainter(
                      position: value,
                      itemCount: categoryCount,
                    ),
                  );
                },
              );
            }),
          ),
        ),
      ],
    );
  }
}