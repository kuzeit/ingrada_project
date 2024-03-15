import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/designerController.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/DesignerData.dart';
import '../../data/model/desiner.dart';
import '../../data/model/order.dart';
import '../widget/continueButton.dart';
import '../widget/customText.dart';
import '../widget/designers/customItemDesigner.dart';



class Designers extends StatelessWidget {
  final DesignerController designerController = Get.put(DesignerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GetBuilder<DesignerController>(
        builder: (controller) => Column(

          children: [
            CustomText(text :"choose designer "),

            SizedBox(
              height: 400,
              child: ListView.builder(

                itemCount: designerController.designers.length,
                itemBuilder: (context, index) {
                  final designer = designerController.designers[index];
                  final isSelected = index==controller.selectedDesignerIndex;

                  return   CustomItrmDesigner(
                     index :index,
                 designer:designer,
                   isSelected:isSelected,
                   );

                },
              ),
            ),
            CustomButton(
              onPressed: () {
                controller.goTonext();
                 // Handle button press
              },
            ),],
        ),
      ),
    );
  }
}