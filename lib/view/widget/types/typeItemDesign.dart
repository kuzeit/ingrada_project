import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/controller/items_controller.dart';
import 'package:engrada_project/controller/typesController.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/functions/translatefatabase.dart';
import 'package:engrada_project/data/model/categoriesmodel.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/view/widget/types/typeItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../data/model/designType.dart';
import '../../../data/model/itemsmodel.dart';

class ListTypesItems extends GetView<typesControllerImp> {
  const ListTypesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
           return
             ListView.builder(
               shrinkWrap: true,
               itemCount: controller.types.length,
               scrollDirection: Axis.vertical,
               itemBuilder: (context, index) {
                 return GetBuilder<typesControllerImp>(
                   builder: (controller) =>
                       TypeItem(
                      i: index,
                      designType: controller.types[index],
                                          ),

                 );
               },

             );
  
  
  }}










