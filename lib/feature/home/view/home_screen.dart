import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/background_widget.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/custom_clipper.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/home_header_section.dart';
import 'package:coffee_shop_app/feature/home/view/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const HomeHeaderSection(),
        body: Stack(
          children: [
            BackgroundWidget(),
            SubtitleWidget(),
            Positioned(
                child: ClipPath(
                  clipper: ClipCustom(),
                  child: Container(
                    height: 190.h,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor
                    ),
                    child: Row(
                      children: List.generate(
                          categories.length,
                              (index)=> Container()
                      )
                      ,
                    ),
                  ),
                ),
            ),
          ],
        ),
    );
  }
}
