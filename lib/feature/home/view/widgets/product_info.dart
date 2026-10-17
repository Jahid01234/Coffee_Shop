import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductInfo extends GetView<HomeController> {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.filteredProducts.isEmpty) return const SizedBox.shrink();

      final product = controller.activeProduct;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              product.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: globalTextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: globalTextStyle(
                color: AppColors.amberColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    });
  }
}