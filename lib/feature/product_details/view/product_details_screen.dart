import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_header_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
    ProductDetailsScreen({super.key});

  final ProductModel product = Get.arguments as ProductModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductHeaderSection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
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
                      color: AppColors.primaryColor
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            // baki fields: price, description, etc.
          ],
        ),
      ),
    );
  }
}