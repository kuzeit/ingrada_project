import 'package:flutter/material.dart';
import 'package:get/get.dart';

 import '../../../controller/CanvasController.dart';
import 'MyPainter.dart';

class Artboard extends GetView<CanvasController> {
  BuildContext context1;
  final GlobalKey artboardKey;

  Artboard(this.context1, this.artboardKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: GestureDetector(
        onPanEnd: (details) {
          controller.onPanEnd();
        },
        onPanStart: (details) {
          controller.onPanStart(context1, details);
        },
        onPanUpdate: (details) {
          controller.onPanUpdate(context1, details);
        },
        child: RepaintBoundary(
          key: artboardKey,
          child: CustomPaint(
            size: Size(300, 400),
            painter: MyPainter(pointsList: controller.points),
          ),
        ),

      ),
    );
  }

}