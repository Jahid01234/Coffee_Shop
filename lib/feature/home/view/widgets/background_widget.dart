import 'package:coffee_shop_app/feature/home/view/widgets/coffee_bean.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          CoffeeBean(degree: 190, right: 160, top: 100,),
          CoffeeBean(degree: 90, left: -50, top: 10,),
          CoffeeBean(degree: 10, left: -70, top: 160,),
          CoffeeBean(degree: 75, right: -20, top: 150,),
          CoffeeBean(degree: 100, right: -70, top: 300,),
          CoffeeBean(degree: 155, right: 70, top: 350,),
          CoffeeBean(degree: 200, left: 60, top: 500,)
        ],
      ),
    );
  }
}
