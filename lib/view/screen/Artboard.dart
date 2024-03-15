//  import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:get/get.dart';
//
// import 'CanvasController.dart';
// import 'MyPainter.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   CanvasController controller = Get.put(CanvasController());
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:   GetBuilder<CanvasController>(
//           builder: (controller)=>
//           CanvasPainting(context),
//     ));
//   }
// }
//
//
//
// class CanvasPainting extends GetView<CanvasController> {
//   BuildContext    context;
//
//   CanvasPainting(this.context);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onPanEnd: (details) {
//                controller.onPanEnd( );
//
//         },
//         onPanStart: (details) {
//
//           controller.onPanStart( context,details);
//
//
//         },
//         onPanUpdate: (details) {
//           controller.onPanUpdate( context,details);
//
//
//         },
//         child: Stack(
//           children: <Widget>[
//
//             CustomPaint(
//               size: Size.infinite,
//               painter: MyPainter(pointsList: controller.points),
//             ),
//             Positioned(
//               top: 16,
//               right: 16,
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () => controller.selectColor(context),
//                     child: Text('Select Color'),
//                   ),
//                   Slider(
//                     value: controller.strokeWidth,
//                     min: 1,
//                     max: 10,
//                     onChanged: (value) {
//
//                       controller.onChangeSize(value);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// IconButton(
//   icon: SvgPicture.asset(
//     'assets/eraser.svg',
//     color: Colors.deepPurpleAccent,
//     width: 40,
//     height: 40,
//   ),
//   onPressed: () => controller.saveImageToGallery(),
// ),
// Row(children: [IconButton(
//
// icon: Icon(Icons.color_lens,size:40,),
// color: Colors.deepPurpleAccent,
// onPressed: () => controller.selectColor(context),
// ),
// IconButton(
// icon: Icon(FontAwesome.eraser, size: 40),
// color: Colors.deepPurpleAccent,
// onPressed: () => controller.eraser(context),
// ),
// IconButton(
// icon: Icon(Icons.delete,size:40),
// color: Colors.deepPurpleAccent,
// onPressed: () => controller.clearDrawing(),
// ),
// IconButton(
// icon: Icon(Icons.save_alt,size:40),
// color: Colors.deepPurpleAccent,
// onPressed: () => controller.saveImageToGallery(),
// ),],),
// List<IconButtonData> iconButtons = [
//   IconButtonData(
//     icon: Icons.color_lens,
//     onPressed: () => controller.selectColor(context),
//   ),
//   IconButtonData(
//     icon: FontAwesomeIcons.eraser,
//     onPressed: () => controller.eraser(context),
//   ),
//   IconButtonData(
//     icon: Icons.delete,
//     onPressed: () => controller.clearDrawing(),
//   ),
//   IconButtonData(
//     icon: Icons.save_alt,
//     onPressed: () => controller.saveImageToGallery(),
//   ),
// ];
//

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../controller/CanvasController.dart';
import '../widget/Artboard/Artboard.dart';
import '../widget/Artboard/listIcons.dart';
import '../widget/continueButton.dart';
import 'Artboard.dart';



class ArtBoardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.put(CanvasController());
    return  Scaffold(
        body:
        GetBuilder<CanvasController>(
        builder: (controller)=>


            Column(
          children: [
            Artboard(context,controller.artboardKey),
            IconButtonListWidget(),
            Slider(
                    value: controller.strokeWidth,
                    min: 1,
                    max: 10,
                    onChanged: (value) => controller.onChangeSize(value),
                  ),


            CustomButton(
              onPressed: () {
                controller.goTonext();
                // Handle button press
              },
            ),

          ],
        ),
      ),
    );
  }
}


