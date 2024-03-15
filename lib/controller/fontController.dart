import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../data/model/fontItem.dart';

class FontsController extends GetxController {
  final selectedFonts = <String>[];
  void goTonext() {
    Get.toNamed(AppRoute.artBoard);
  }
  List<FontItem> fontItems = [
    FontItem(imageName: 'images/engrada/fo1.jpg', fontName: 'Font 1'),
    FontItem(imageName: 'images/engrada/fo2.jpg', fontName: 'Font 2'),
    FontItem(imageName: 'images/engrada/fo3.jpg', fontName: 'Font 3'),
    FontItem(imageName: 'images/engrada/fo4.jpg', fontName: 'Font 4'),
    FontItem(imageName: 'images/engrada/fo5.jpg', fontName: 'Font 5'),
    FontItem(imageName: 'images/engrada/fo6.jpg', fontName: 'Font 6'),

    // Add more font items...
  ].obs;
  bool containFont(int index )
  { final fontName = fontItems[index].fontName;
  if (selectedFonts.contains(fontName))
    return true;
  return false;
  }
  void toggleFontSelection(int index) {
    final fontItem = fontItems[index];
    final fontName = fontItem.fontName;

    if (selectedFonts.contains(fontName)) {
      selectedFonts.remove(fontName);
    } else {
      selectedFonts.add(fontName);
    }

    update();
  }
}
