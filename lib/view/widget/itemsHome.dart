import 'package:engrada_project/controller/items_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../controller/likeController.dart';
import 'home/likeButton.dart';

class ItemsHome extends StatelessWidget {
  final int index;
  bool? isSelected; // Use nullable bool type
  final List<dynamic> items;
    ItemsControllerImp ?controller;

  ItemsHome({
    Key? key,
    required this.index,
    required this.items,
      this.controller,
    this.isSelected, // Make isSelected nullable with a default value of null
  }) : super(key: key);  // "images/engrada/writing_1.png",

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp orderController ;
    return  SizedBox(
      height: 120,
      child: InkWell(

        child: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          elevation: 2.0,
          child: Stack(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                 onTap: (){
                   if(!controller.isNull)
                     controller!.selectItem(index);},
                 child: Image.asset(
                    "${items[index].image}",
                    fit: BoxFit.fill,
                    width: 100,
                    height: 100,
                  ),
               ),
                    Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LikeButton(index,items),

                    ],),
                ),


              ],

            ),

              if(controller!=null && controller!.selectedItem ==index )

            Container(
        width: 100,
        height: 100,
        color: Colors.black.withOpacity(0.2),
      ),

        if (controller!=null && controller!.selectedItem ==index )
    Center(
      child: Icon(
        Icons.check,
        color: Colors.white,
        size:30,),
    )],
        ),
      ),
    ));
  }
}
