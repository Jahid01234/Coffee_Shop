import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  final ProductModel product;

  const ProductImageSection({
    super.key,
    required this.product,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 180,
        width: 190,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greyColor.withValues(alpha: 0.09),
                ),
              ),
            ),
            Positioned(
              top: -10,
              child: Image.asset(
                product.image,
                height: 190,
                width: 180,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.local_cafe,
                  size: 100,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}