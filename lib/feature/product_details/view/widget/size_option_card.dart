import 'package:coffee_shop_app/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coffee_shop_app/feature/home/model/size_option_model.dart';

class SizeOptionCard extends StatelessWidget {
  final List<SizeOptionModel> sizes;
  final RxInt selectedIndex;

  const SizeOptionCard({
    super.key,
    required this.sizes,
    required this.selectedIndex,
  });

  static const Color selectedColor = Color(0xFF35966D);
  static const Color unselectedColor = Color(0xFFEDF5F1);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        children: List.generate(sizes.length, (index) {
          final size = sizes[index];
          final isSelected = selectedIndex.value == index;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectedIndex.value = index;
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Cup Icon Circle
                  // Cup Icon Circle
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? selectedColor
                          : unselectedColor,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      size.image,
                      width: 35,
                      height: 35,
                      fit: BoxFit.contain,
                      color: isSelected ? Colors.white : selectedColor,
                      colorBlendMode: BlendMode.srcIn,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Size Name
                  Text(
                    size.name,
                    style: globalTextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? Colors.black
                          : Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 3),

                  // Quantity
                  Text(
                    size.quantity,
                    style: globalTextStyle(
                      fontSize: 12,
                      color: isSelected
                          ? Colors.grey.shade600
                          : Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}
