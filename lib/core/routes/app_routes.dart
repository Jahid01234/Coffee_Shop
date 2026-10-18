import 'package:coffee_shop_app/feature/home/view/home_screen.dart';
import 'package:coffee_shop_app/feature/product_details/view/product_details_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  // Get routes name here.......
  static const String home = '/home';
  static const String productDetails = '/productDetails';


  // Get routes here.......
  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: productDetails,
      page: () => ProductDetailsScreen(),
      transition: Transition.fadeIn,
    ),

  ];
}