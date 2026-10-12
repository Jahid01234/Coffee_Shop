import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Pichoner dark circle
        Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.08),
          ),
        ),
        Image.asset(
          product.image,
          height: 200,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(
            Icons.local_cafe,
            size: 90,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}