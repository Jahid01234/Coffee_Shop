import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/const/icons_path.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeaderSection({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  IconsPath.coffeeIcon,
                  height: 35,
                  width: 35,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome Back\n',
                        style: globalTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Hello, Mr. Jahid',
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
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}