import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../controller/CanvasController.dart';
import 'iconButton.dart';

class IconButtonListWidget extends GetView<CanvasController> {
  const IconButtonListWidget();

  @override
  Widget build(BuildContext context) {
    return     Padding(
        padding: EdgeInsets.only(top: 10,right: 10,left:10),child:
    Row(
       children: [
        IconButtonData(
          icon: Icons.color_lens,
          onPressed: () => controller.selectColor(context),
        ),
        IconButtonData(
          icon: FontAwesome.eraser,
          onPressed: () => controller.eraser(context),
        ),
    IconButtonData(
          icon: Icons.delete,
          onPressed: () => controller.clearDrawing(),
        ),
    IconButtonData(
          icon: Icons.save_alt,
          onPressed: () => controller.saveImageToGallery(),
        ),
      ],
    ));}


  }
