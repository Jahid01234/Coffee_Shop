import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/global_widgets/app_primary_button.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:coffee_shop_app/feature/product_details/controller/product_details_controller.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/increment_decrement_button.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_header_section.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_image_section.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/product_title_price_section.dart';
import 'package:coffee_shop_app/feature/product_details/view/widget/size_option_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});

  final ProductModel product = Get.arguments as ProductModel;
  final ProductDetailsController controller = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductHeaderSection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            ProductImageSection(product: product),
            SizedBox(height: 40),
            ProductTitlePriceSection(product: product),
            SizedBox(height: 30),
            Text(
              'Size Options',
              style: globalTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 10),
            SizeOptionCard(
              sizes: product.sizes,
              selectedIndex: controller.selectedSizeIndex,
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IncrementDecrementButton(controller: controller),
                AppPrimaryButton(
                  width: 150,
                  text: "Add to Order",
                  onTap:  (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




