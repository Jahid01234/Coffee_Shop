import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 10,
        left: 40,
        child: Text(
          "Smooth Out\nYour Everyday",
          style: globalTextStyle(
             fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
    );
  }
}
