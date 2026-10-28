import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductTitlePriceSection extends StatelessWidget {
  final ProductModel product;

  const ProductTitlePriceSection({
    super.key,
    required this.product,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            product.name,
            maxLines: 3,
            style: globalTextStyle(
              color: AppColors.blackColor,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Text(
              "\$${product.price}",
              style: globalTextStyle(
                color: AppColors.primaryColor,
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Best Sales",
              style: globalTextStyle(
                color: AppColors.greyColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}