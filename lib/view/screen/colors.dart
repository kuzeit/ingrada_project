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

import '../../controller/colorsController.dart';
import '../../controller/typesController.dart';
import '../../data/model/order.dart';
import '../widget/colors/customColorItem.dart';
import '../widget/continueButton.dart';
import '../widget/customText.dart';
import '../widget/home/listitemshome.dart';
import '../widget/itemsHome.dart';
import '../widget/listcategoirseitems.dart';
import '../widget/types/typeItemDesign.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ColorsPage extends StatelessWidget {
  final ColorController controller = Get.put(ColorController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text :"choose color "),
            SizedBox(height: 30),
            GetBuilder<ColorController>(
              builder: (controller)=>
              GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.0,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
              ),
              padding: const EdgeInsets.all(8.0),
              itemCount: controller.colorItems.length,
              itemBuilder: (BuildContext context, int index) {
                final color1 = controller.colorItems[index];

                return CustomColorItem(index :index , color:color1);
              },
            )),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {

                   controller.goTonext();
                  // Handle button press
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
