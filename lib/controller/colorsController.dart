
import 'package:engrada_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../data/model/order.dart';

class ColorController extends GetxController {
  final selectedColors = <Color>[].obs;
  Order order =Get.find();
  List<Color> colorItems = [

  ];
  @override
  void onInit() {
    colorItems = [
      AppColor.primaryColor,
      AppColor.thirdColor,
      // Colors.black,
      // Colors.black54,
      // Colors.redAccent,
      // Colors.green,
      // Colors.greenAccent,
      // Colors.blue,


    ];
print("${colorItems.length}") ;   super.onInit();
  update();}
  String colorToHex(Color color) {
    return '0x${color.value.toRadixString(16)
        .padLeft(8, '0')
    }';
  }
  void goTonext() {
    List<String> selectedColorsStrings =  selectedColors
        .map((color) => colorToHex(color))
        .toList();

    order.colors=selectedColorsStrings;
    print("  order colors :........................${order.colors}");
    Get.toNamed(AppRoute.fonts);
  }
  void toggleColorSelection(int i) {
    if (selectedColors.contains(colorItems[i])) {
      selectedColors.remove(colorItems[i]);
    } else {
      selectedColors.add(colorItems[i]);
    }
    update();}

  bool containColor(int index) {
    if(
    selectedColors.contains( colorItems[index]))return true ;
    return false ;

  }
}