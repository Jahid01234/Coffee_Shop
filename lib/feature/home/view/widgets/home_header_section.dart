import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/const/icons_path.dart';
import 'package:coffee_shop_app/core/const/images_path.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              ImagesPath.coffeeCup,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              color: AppColors.blackColor,
            ),
            SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Qahwa',
                    style: globalTextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
                    style: globalTextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Image.asset(
          IconsPath.cartIcon,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
          color: AppColors.blackColor,
        ),
      ],
    );
  }
}
