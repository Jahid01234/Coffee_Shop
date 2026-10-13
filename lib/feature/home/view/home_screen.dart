import 'package:coffee_shop_app/feature/home/controller/home_controller.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/background_widget.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/green_demo_section.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/home_header_section.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: const HomeHeaderSection(),
      body: Stack(
        children: [
          BackgroundWidget(),
          SubtitleWidget(),
          const Positioned(
            top: 120,
            left: 0,
            right: 0,
            bottom: 0,
            child: GreenDomeSection(),
          ),
        ],
      ),
    );
  }
}