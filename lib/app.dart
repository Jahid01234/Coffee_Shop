import 'package:coffee_shop_app/core/const/app_colors.dart';
import 'package:coffee_shop_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, __) {
        return GetMaterialApp(
          title: 'Coffee Shop Ui',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whiteColor
          ),
          initialRoute: AppRoutes.home,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}