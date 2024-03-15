import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/colorsController.dart';

class CustomColorItem extends GetView<ColorController> {
  final Color color;
  final int index;

  const CustomColorItem({required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    final bool containsColor = controller.containColor(index);

    return GestureDetector(
      onTap: () {
        controller.toggleColorSelection(index);
      },
      child:

            Container(
            color: containsColor ? color : null,
            child: containsColor
                ? Icon(
              Icons.check,
              color: Colors.white,
            )
                : null,
          ));



  }
}