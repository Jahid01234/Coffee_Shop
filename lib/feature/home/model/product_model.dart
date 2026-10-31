import 'package:coffee_shop_app/core/const/images_path.dart';
import 'package:coffee_shop_app/feature/home/model/category_model.dart';
import 'package:coffee_shop_app/feature/home/model/size_option_model.dart';

class ProductModel {
  final String name;
  final String image;
  final double price;
  final CategoryModel category;
  final List<SizeOptionModel> sizes;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.category,
    required this.sizes,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Blueberry Muffin',
    image: ImagesPath.bakery1,
    price: 13,
    category: categories[3],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Blueberry Scone',
    image: ImagesPath.bakery2,
    price: 12,
    category: categories[3],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Butter Croissant',
    image: ImagesPath.bakery3,
    price: 10,
    category: categories[3],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Petite Vanilla Bean Scone',
    image: ImagesPath.bakery4,
    price: 13,
    category: categories[3],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Pumpkin Cream Cheese Muffin',
    image: ImagesPath.bakery5,
    price: 15,
    category: categories[3],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Evolution Fresh Mighty Watermelon',
    image: ImagesPath.drink1,
    price: 18,
    category: categories[1],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Caramel Brulee Frappuccino Blended Beverage',
    image: ImagesPath.drink2,
    price: 20,
    category: categories[1],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Pink Drink Starbucks Refreshers Beverage',
    image: ImagesPath.drink4,
    price: 21,
    category: categories[1],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Pistachio Frappuccino Blended Beverage',
    image: ImagesPath.drink5,
    price: 22,
    category: categories[1],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Strawberry Creme Frappuccino Blended Beverage',
    image: ImagesPath.drink6,
    price: 23,
    category: categories[1],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Caffe Americano',
    image: ImagesPath.coffee1,
    price: 18,
    category: categories[0],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Mistletoe Coffee',
    image: ImagesPath.coffee2,
    price: 19,
    category: categories[0],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Cappuccino',
    image: ImagesPath.coffee3,
    price: 20,
    category: categories[0],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Featured Medium Roast - Pike Place Roast',
    image: ImagesPath.coffee4,
    price: 21,
    category: categories[0],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Honey Almondmilk Flat White',
    image: ImagesPath.coffee5,
    price: 22,
    category: categories[0],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Chai Tea Latte',
    image: ImagesPath.tea1,
    price: 17,
    category: categories[2],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Chai Tea',
    image: ImagesPath.tea2,
    price: 18,
    category: categories[2],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: "Emperor's Clouds & Mist",
    image: ImagesPath.tea3,
    price: 19,
    category: categories[2],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Honey Citrus Mint Tea',
    image: ImagesPath.tea4,
    price: 20,
    category: categories[2],
    sizes: sizeOptions,
  ),
  ProductModel(
    name: 'Matcha Tea Latte',
    image: ImagesPath.tea5,
    price: 21,
    category: categories[2],
    sizes: sizeOptions,
  ),
];
