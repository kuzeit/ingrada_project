import 'package:engrada_project/controller/items_controller.dart';
import 'package:engrada_project/core/class/handlingdataview.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:engrada_project/view/screen/homepage.dart';
//  import 'package:engrada_project/view/widget/items/customlistitems.dart';
// import 'package:ecommercecourse/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/typesController.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/fontController.dart';
import '../../data/model/order.dart';
import '../widget/continueButton.dart';
import '../widget/customText.dart';
import '../widget/fonts/customFontItem.dart';
 class Fonts extends StatelessWidget {
  final FontsController controller = Get.put(FontsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
                Container(
                   child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text :"choose fonts "),

                        SizedBox(height: 30),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 1.0,
                            crossAxisSpacing: 1.0,
                          ),
                          padding: const EdgeInsets.all(8.0),
                          itemCount: controller.fontItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            final fontItem = controller.fontItems[index];

                            return CustomFontItem(index:index , image:fontItem.imageName);
                          },
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            onPressed: () {
                              controller.goTonext();
                              Order order=Get.find();
                              order.fonts=controller.selectedFonts;
                              print("fonts....................${order.fonts}");
                              // Handle button press
                            },
                          ),
                        ), ],
                    ),
                  ),
                ));



  }
}