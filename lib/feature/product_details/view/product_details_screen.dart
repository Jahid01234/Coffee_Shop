import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_header_section.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_image_section.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_title_price_section.dart';
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
            SizedBox(height: 10),
            ProductImageSection(product: product),
            SizedBox(height: 15),
            ProductTitlePriceSection(product: product),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}




