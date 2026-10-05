import 'package:coffee_shop_app/core/const/app_size.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/home_header_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            HomeHeaderSection(),
            SizedBox(height: getHeight(20)),
          ],
        ),
    );
  }
}
