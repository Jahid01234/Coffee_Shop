import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/const/app_size.dart';
import 'package:coffee_shop_app/core/const/icons_path.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 50.h,left: 20.h,right: 20.h,bottom: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                  SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Qahwa\n',
                          style: globalTextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Space',
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
          SizedBox(height: getHeight(20)),
          Text(
             'Smooth Out\n    Your Everyday',
            style: globalTextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
