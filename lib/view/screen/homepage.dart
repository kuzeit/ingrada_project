 import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/class/handlingdataview.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/data/model/designType.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:engrada_project/linkapi.dart';
  import 'package:engrada_project/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../core/constant/color.dart';
import '../widget/continueButton.dart';
import '../widget/home/buildSectionDesiges.dart';
import '../widget/home/customappBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
      appBar: CustomAppBar1(),
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset(
                  'assets/images/logoIngrad.jpg',
                  width: ((180.0 / 412) * 100).w,
                  height: ((130.0 / 892) * 100).h,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.sectionData.length,
                  itemBuilder: (context, index) {
                    final typeId = controller.sectionData[index]["typeId"];
                    final title = controller.sectionData[index]["title"];
                    final items = controller.sectionData[index]["items"];

                    return SectionDesignes(
                      typeId: typeId,
                      title: title,
                      items: items,
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}