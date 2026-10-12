import 'package:coffee_shop_app/core/const/images_path.dart';
import 'package:get/get.dart';

// class HomeController extends GetxController{
//
//
//
// }

import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  /// Selected category index (0 = Hot Coffee, 1 = Drinks, 2 = Hot Teas, 3 = Bakery)
  final selectedCategory = 1.obs;

  /// Selected category er product gulo
  final filteredProducts = <ProductModel>[].obs;

  /// filteredProducts er moddhe currently center e thaka product er index
  final currentProduct = 0.obs;

  late final PageController pageController;

  ProductModel get activeProduct => filteredProducts[currentProduct.value];

  @override
  void onInit() {
    super.onInit();
    _filterProducts();
    currentProduct.value = _middleIndex;
    pageController = PageController(
      viewportFraction: 0.55,
      initialPage: currentProduct.value,
    );
  }

  int get _middleIndex =>
      filteredProducts.isEmpty ? 0 : filteredProducts.length ~/ 2;

  void _filterProducts() {
    final selected = categories[selectedCategory.value];
    filteredProducts.assignAll(
      products.where((p) => p.category.name == selected.name),
    );
  }

  void selectCategory(int index) {
    if (selectedCategory.value == index) return;

    selectedCategory.value = index;
    _filterProducts();
    currentProduct.value = _middleIndex;

    // Notun list er middle item e jump koro
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (pageController.hasClients) {
        pageController.jumpToPage(currentProduct.value);
      }
    });
  }

  void onProductChanged(int index) => currentProduct.value = index;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}