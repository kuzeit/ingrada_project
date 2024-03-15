import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/likeController.dart';
import '../itemsHome.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  final List<dynamic> items;

  const ListItemsHome({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      SizedBox(
      height: 120,
      child:
    ListView.separated(
        itemCount:  items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ItemsHome(
            index:index,
items: items,
                 );
        },
        separatorBuilder: (context, index) {
          return Container(
            width: 6, // Set the height of the separator to zero
          );
        },
      )
    );
  }
}

