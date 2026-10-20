import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/const/icons_path.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class ProductHeaderSection extends StatelessWidget implements PreferredSizeWidget {
  const ProductHeaderSection({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Details',
        style: globalTextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            IconsPath.cartIcon,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}