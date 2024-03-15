import 'package:engrada_project/controller/orderController.dart';
import 'package:engrada_project/view/widget/continueButton.dart';
import 'package:engrada_project/view/widget/fullOrder/customFieldOrder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/order.dart';

class FullOrder extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    Order order =Get.find();
    Get.put(OrderController());

    return Scaffold(
        body:  Container(
        margin: EdgeInsets.only(left: 6, right: 6, top: 10),
    child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


      Flexible(
        child: ListView(
            children:[
           CustomFieldOrder(title: order.title ?? ''),
               CustomFieldOrder(title:order.type??''),
              //
                CustomFieldOrder(title:order.pereferce??''),
              CustomFieldOrder(title:order.value??''),
                CustomFieldOrder(title:order.scope??''),
              CustomFieldOrder(title:order.idea??''),
              CustomFieldOrder(title:order.visualIdentity??''),
              CustomFieldOrder(title:order.designerName??''),
              CustomFieldOrder(title:order.numberPages?.toString()?? ''),
              CustomFieldOrder(title:order.description??''),
              CustomFieldOrder(title:  order.finalPrice?.toString()??''),









            ]),
      ),

      Align(
        alignment: Alignment.center,

        child: GetBuilder<OrderController>(
     builder: (controller) => CustomButton(
          onPressed: () {

            controller.goTonext();
            // Handle button press
          },
        )),
      ),


   ])
    ));}}