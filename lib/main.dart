import 'package:coffee_shop_app/app.dart';
import 'package:coffee_shop_app/core/const/app_fonts.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppFonts.loadGoogleFonts();
  runApp(const MyApp());
}






