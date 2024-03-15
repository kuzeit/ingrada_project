 import 'package:engrada_project/controller/items_controller.dart';
import 'package:engrada_project/core/class/handlingdataview.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
 import 'package:engrada_project/view/screen/homepage.dart';
//  import 'package:engrada_project/view/widget/items/customlistitems.dart';
// import 'package:ecommercecourse/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/CustomRow.dart';
import '../widget/continueButton.dart';
import '../widget/home/listitemshome.dart';
import '../widget/itemsHome.dart';
import '../widget/listcategoirseitems.dart';
import '../widget/prefernces/customSpinner.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(ItemsControllerImp());

    return Scaffold(
      body:  GetBuilder<ItemsControllerImp>(
          builder: (controller) =>SingleChildScrollView(
         child: Column(mainAxisSize:MainAxisSize.max ,
             children: [
           CustomAppBar3(text:" ${controller.typeName}"),
          //const SizedBox(height: 20),

       ListCategoriesItems(),
          Row(
             children: [
              CustomSpinner(
                selectedValue: controller.selectedValue,
                onChanged: (value) {
                controller.setSelectedValue(value);
                                   },
               items :controller.dropdownItems,

              ),


               if (controller.selectedItem!=-1)
                 TextButton(onPressed:  (){
                   controller.goToNext();
                 }, child: Text("continue"))
             ],
          ),
          SizedBox(height:6),
         HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget:
                        Container(
                            height: 376,
                          child: GridView.builder(
                            padding:EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: controller.data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 4,
                                    crossAxisSpacing: 4,
                                    crossAxisCount: 3, childAspectRatio: (100/120)),
                            itemBuilder: (BuildContext context, index) {
                               return
                                ItemsHome(
                                  index:index,
                                  items:controller.data ,
                                  controller: controller,
                                 );

                             }),
                        )

                      ),

         ])),
      ),
    );
  }
}





















// favoriteController.isFavorite[controller.data[index]
                            // ['items_id']] = controller.data[index]['favorite'];
