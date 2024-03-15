import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model/TouchPoint.dart';



class MyPainter extends CustomPainter {
  List<TouchPoints> pointsList;

  MyPainter({required this.pointsList});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i].points != null && pointsList[i + 1].points != null) {
        canvas.drawLine(
          pointsList[i].points!,
          pointsList[i + 1].points!,
          pointsList[i].paint!,
        );
      } else if (pointsList[i].points != null && pointsList[i + 1].points == null) {
        canvas.drawPoints(
          PointMode.points,
          [pointsList[i].points!],
          pointsList[i].paint!,
        );
      }
    }
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

