import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';


class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Product Image
        GestureDetector(
          onTap: ()=> onTap,
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
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGreyColor
                          .withValues(alpha: 0.6,
                      ),
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
        ),

        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
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
    );
  }
}
