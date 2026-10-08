import 'package:coffee_shop_app/feature/home/view/widgets/background_widget.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/home_header_section.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const HomeHeaderSection(),
        body: Stack(
          children: [
            BackgroundWidget(),
            SubtitleWidget(),

          ],
        ),
    );
  }
}
