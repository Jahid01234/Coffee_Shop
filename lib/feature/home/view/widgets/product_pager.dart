import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPager extends GetView<HomeController> {
  const ProductPager({super.key});

  @override
  Widget build(BuildContext context) {
    final pc = controller.pageController;

    return Obx(() {
      final items = controller.filteredProducts;
      return PageView.builder(
        controller: pc,
        clipBehavior: Clip.none,
        itemCount: items.length,
        onPageChanged: controller.onProductChanged,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: pc,
            builder: (context, child) {
              double page = controller.currentProduct.value.toDouble();
              if (pc.hasClients && pc.position.haveDimensions) {
                page = pc.page ?? page;
              }

              final diff = (page - index).abs().clamp(0.0, 1.0);
              final scale = 1 - (0.1 * diff);
              final offsetY = 70 * Curves.easeOut.transform(diff);

              return Transform.translate(
                offset: Offset(0, offsetY),
                child: Transform.scale(
                  scale: scale,
                  child: Opacity(opacity: 1 - (0.3 * diff), child: child),
                ),
              );
            },
            child: ProductCard(product: items[index]),
          );
        },
      );
    });
  }
}