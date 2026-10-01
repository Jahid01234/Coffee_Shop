import 'package:coffee_shop_app/feature/home/view/home_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  // Get routes name here.......
  static const String home = '/home';
  static const String bottomNavBar = '/bottomNavBar';


  // Get routes here.......
  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),

  ];
}