import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/fontController.dart';

class CustomFontItem extends GetView<FontsController> {
  final int index;
  final String image;

  CustomFontItem({required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleFontSelection(index);
      },
      child: GetBuilder<FontsController>(
        builder: (controller) => Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
          child: controller.containFont(index)
              ? Icon(
            Icons.check,
            color: Colors.red,
          )
              : null,
        ),
      ),
    );
  }
}