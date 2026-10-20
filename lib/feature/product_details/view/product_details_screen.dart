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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: product, child: Image.asset(product.image)),
            Text(
              product.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // baki fields: price, description, etc.
          ],
        ),
      ),
    );
  }
}