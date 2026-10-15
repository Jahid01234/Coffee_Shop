import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final  filteredProducts = <ProductModel>[].obs;
  final currentProduct = 0.obs;
  final selectedCategory = 1.obs;
  late final PageController pageController;



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

  ProductModel get activeProduct => filteredProducts[currentProduct.value];
  void onProductChanged(int index) => currentProduct.value = index;


  int get _middleIndex => filteredProducts.isEmpty
                          ? 0
                          : filteredProducts.length ~/ 2;

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (pageController.hasClients) {
        pageController.jumpToPage(currentProduct.value);
      }
    });
  }


  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

