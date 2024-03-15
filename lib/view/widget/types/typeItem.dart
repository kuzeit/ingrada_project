import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/typesController.dart';
import '../../../core/constant/color.dart';
import '../../../data/model/designType.dart';

class TypeItem extends GetView<typesControllerImp> {
  final DesignType designType;
  final int? i;
  const TypeItem({Key? key, required this.designType, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Container(
        height: 72,
        margin: EdgeInsets.all(3),
        child: Material(
          color: (controller.indexSelected == i) ? Colors.grey.shade400 : AppColor.UnselectionColor,

          elevation: 2,
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.antiAlias,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300, // Set the border color
                width: 1, // Set the border width
              ),
            ),
            child: InkWell(
                splashColor: Colors.grey.shade500, // Change the splash color as needed
              onTap: () {
                print("selected-------------------------------- $i");
                controller.select(i);
              },
              child: Center(
                child: Text(
                  "${designType.name}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}


