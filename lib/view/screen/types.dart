import 'package:engrada_project/controller/items_controller.dart';
import 'package:engrada_project/core/class/handlingdataview.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:engrada_project/view/screen/homepage.dart';
//  import 'package:engrada_project/view/widget/items/customlistitems.dart';
// import 'package:ecommercecourse/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/typesController.dart';
import '../widget/continueButton.dart';
import '../widget/home/listitemshome.dart';
import '../widget/itemsHome.dart';
import '../widget/listcategoirseitems.dart';
import '../widget/types/typeItemDesign.dart';

class Types extends StatelessWidget {
  const Types({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(typesControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child:
    GetBuilder<typesControllerImp>(
    builder: (controller) =>
        Column(children: [
        const SizedBox(height: 20),

         ListTypesItems()
          ,

          SizedBox(height: 20,),
           Container(
child: controller.indexSelected !=-1?
Text("price: ${controller.types[controller.indexSelected!].price}\$ "
,style: const TextStyle(fontSize:16 ),)
:null        ),
          SizedBox(height:80,),
          CustomButton(
              onPressed: () {
                controller.goToNext();
              }
          )
        ]),
      ),
    ));
  }
}





















// favoriteController.isFavorite[controller.data[index]
// ['items_id']] = controller.data[index]['favorite'];
