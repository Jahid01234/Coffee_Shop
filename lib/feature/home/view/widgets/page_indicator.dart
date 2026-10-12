import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicator extends GetView<HomeController> {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(controller.filteredProducts.length, (i) {
          final active = controller.currentProduct.value == i;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            margin: const EdgeInsets.symmetric(horizontal: 6),
            height: active ? 16 : 6,
            width: active ? 16 : 6,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: active
                  ? Border.all(color: Colors.amberAccent, width: 1.5)
                  : null,
              color: active ? null : Colors.white54,
            ),
            child: active
                ? Container(
              height: 6,
              width: 6,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            )
                : null,
          );
        }),
      );
    });
  }
}