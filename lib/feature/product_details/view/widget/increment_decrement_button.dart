import 'package:coffee_shop_app/core/global_widgets/app_primary_button.dart';
import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:coffee_shop_app/feature/product_details/controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        AppPrimaryButton(
            height: 50,
            width: 50,
            radius: 100,
            text: "-",
            fontSize: 20,
            onTap:  controller.decrementFunction,
        ),
        SizedBox(width: 20),
        Obx(()=>Text(
            controller.initialValue.value.toString(),
            style: globalTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 20),
        AppPrimaryButton(
            height: 50,
            width: 50,
            radius: 100,
            text: "+",
            fontSize: 20,
            onTap:  controller.incrementFunction
        ),
      ],
    );
  }
}
