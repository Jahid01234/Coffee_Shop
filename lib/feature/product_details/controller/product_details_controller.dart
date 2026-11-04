import 'package:get/get.dart';

class ProductDetailsController extends GetxController{
  final RxInt selectedSizeIndex = 0.obs;
  final RxInt initialValue = 1.obs;


  void incrementFunction() {
    initialValue.value++;
  }

  void decrementFunction() {
    if (initialValue.value > 1) {
      initialValue.value--;
    }
  }

}