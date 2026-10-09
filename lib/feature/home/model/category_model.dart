import 'package:coffee_shop_app/core/const/images_path.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });
}



final List<CategoryModel> categories = [
  CategoryModel(
    name: 'Hot Coffee',
    image: ImagesPath.hotCoffee,
  ),
  CategoryModel(
    name: 'Drinks',
    image: ImagesPath.drink,
  ),
  CategoryModel(
    name: 'Hot Teas',
    image: ImagesPath.hotTea,
  ),
  CategoryModel(
    name: 'Bakery',
    image: ImagesPath.bakery,
  ),
];