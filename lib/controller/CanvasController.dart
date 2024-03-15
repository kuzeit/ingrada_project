import 'dart:ui' as ui;
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as img;
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
 import 'dart:typed_data';
import 'package:flutter/services.dart';


import 'package:flutter/rendering.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

import '../core/constant/routes.dart';
import '../data/model/TouchPoint.dart';

class CanvasController extends GetxController {
  List<TouchPoints> points = [];
  Color selectedColor = Colors.black;
  double strokeWidth = 4.0;


  void onPanStart(BuildContext context, var details) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset localPosition = renderBox.globalToLocal(details.globalPosition);
    points.add(TouchPoints(
      points: localPosition,
      paint: Paint()
        ..strokeCap = StrokeCap.round
        ..isAntiAlias = true
        ..color = selectedColor
        ..strokeWidth = strokeWidth,
    ));
    update();
  }

  void onPanEnd() {
    points.add(TouchPoints(
      points: null,
      paint: null,
    ));
    update();
  }

  void onChangeSize(var value) {
    strokeWidth = value;
    update();
  }
  void goTonext() {
    Get.toNamed(AppRoute.designers);
  }
  void onPanUpdate(BuildContext context, var details) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset localPosition = renderBox.globalToLocal(details.globalPosition);
    points.add(TouchPoints(
      points: localPosition,
      paint: Paint()
        ..strokeCap = StrokeCap.round
        ..isAntiAlias = true
        ..color = selectedColor
        ..strokeWidth = strokeWidth,
    ));
    update();
  }

  void selectColor(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (color) {
                selectedColor = color;
                update();
              },
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                update();
              },
            ),
          ],
        );
      },
    ).then((value) {
      // This block of code will bring the color picker dialog to the top of the screen
      Future.delayed(Duration.zero, () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.transparent,
              content: SizedBox(),
            );
          },
        );
      });
    });
  }

  clearDrawing() {
    points.clear();
  }

  final GlobalKey artboardKey = GlobalKey();

  // ...existing code...

  // ...existing code...


  // ...existing code...


  late File file;

  bool file1 = false;
  Future<void> saveImageToGallery() async {
    RenderRepaintBoundary boundary =
    artboardKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 1);
    ByteData? byteData =
    await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    Directory? directory = await getExternalStorageDirectory();
    String path = directory!.path;
    print(path);
    File imageFile = File('$path/drawingrr.png');
    await imageFile.writeAsBytes(pngBytes);
    file = imageFile;
    file1 = true;
    update();

    await ImageGallerySaver.saveImage(pngBytes);
  }

  eraser(BuildContext context) {selectedColor=Colors.white;}



}







// ...


// ...




