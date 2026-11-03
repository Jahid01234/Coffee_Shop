import 'package:coffee_shop_app/core/global_widgets/app_primary_button.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:coffee_shop_app/feature/product_details/controller/product_details_controller.dart';
import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatelessWidget {
  final ProductDetailsController controller;

  const IncrementDecrementButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppPrimaryButton(text: "-", onTap: (){}),
        Text(
          "1",
          style: globalTextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500
          ),
        ),

        AppPrimaryButton(text: "+", onTap: (){})
      ],
    );
  }
}
