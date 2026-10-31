import 'package:coffee_shop_app/core/const/icons_path.dart';

class SizeOptionModel{
  final String image;
  final String name;
  final String quantity;

  SizeOptionModel({
    required this.image,
    required this.name,
    required this.quantity
  });
}


 final List<SizeOptionModel> sizeOptions = [
  SizeOptionModel(
      image: IconsPath.coffeeCupSize1,
      name: 'Tall',
      quantity: '12 Fl Oz',
  ),
  SizeOptionModel(
      image: IconsPath.coffeeCupSize2,
      name: 'Grande',
      quantity: '16 Fl Oz',
  ),
  SizeOptionModel(
      image: IconsPath.coffeeCupSize3,
      name: 'Vent',
      quantity: '24 Fl Oz',
  ),
  SizeOptionModel(
      image: IconsPath.coffeeCupSize4,
      name: 'Custom',
      quantity: '..Fl Oz',
  ),
];