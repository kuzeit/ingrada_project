import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionDesignes extends GetView<HomeControllerImp>{
  final int typeId;
  final String title;
  final List<dynamic> items;

  SectionDesignes({
    required this.typeId,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'salsa',
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GetBuilder<HomeControllerImp>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.goToGallary(typeId);
                    },
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ],
          ),
        ),
        ListItemsHome(items: items),
      ],
    );
  }
}