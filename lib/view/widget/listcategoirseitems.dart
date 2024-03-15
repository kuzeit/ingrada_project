import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/controller/items_controller.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/functions/translatefatabase.dart';
import 'package:engrada_project/data/model/categoriesmodel.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../data/model/itemsmodel.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child:
      ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount:controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return   GetBuilder<ItemsControllerImp>(
              builder: (controller) =>Categories(
            i: index,
            categoriesModel:
             controller.categories[index],
          ));
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToItems(controller.categories, i!);
        controller.changeCat(i!, categoriesModel.id!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => Container(
                    padding:const  EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    decoration:
                    controller.selectedCat == i
                        ?
                    const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 3, color: AppColor.primaryColor)))
                        : null,
                    child: Text(
                      "${ categoriesModel.name}",
                      style:
                            TextStyle(fontSize: 15.sp, color: AppColor.grey2),
                    ),
                  ))
        ],
      ),
    );
  }
}
