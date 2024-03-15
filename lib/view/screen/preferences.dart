 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bindings/intialbindings.dart';
import '../../controller/PreferencesController.dart';
import '../../core/class/handlingdataview.dart';
import '../../core/constant/routes.dart';
import '../../data/model/categoriesmodel.dart';
import '../widget/CustomRow.dart';
import '../widget/continueButton.dart';
import '../widget/itemsHome.dart';
import '../widget/prefernces/ItemPreference.dart';


class Preferences extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.put(PreferencesControllerImp());

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
               child: GetBuilder<PreferencesControllerImp>(
                builder: (controller) => CustomAppBar3(text:" ${controller.typeName}")),
            ),
            SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               ],
            ),
            GetBuilder<PreferencesControllerImp>(
                builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget:
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.categories.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            crossAxisCount: 2, childAspectRatio: (140/166)),
                        itemBuilder: (BuildContext context, index) {
                           return
                            ItemsPreference(
                              index:index,
                              categories: controller.categories,

                              isSelected: controller.catId == index ? true : false,
                              onTap: () {

                                controller.selectCategory(index);  },
                             );



                        })
                ))
            ,
        GetBuilder<PreferencesControllerImp>(
      builder: (controller) =>CustomButton(onPressed: (){
         Get.toNamed(AppRoute.colors);
      })),
          ],
        ),
      ),
    );
  }
}

