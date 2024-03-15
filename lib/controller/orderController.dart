
import 'package:engrada_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/sendOrderData.dart';
import '../data/model/order.dart';

class OrderController extends GetxController {
   Order order =Get.find();

   SendOrderData testData = SendOrderData(Get.find());

   late StatusRequest statusRequest;

   MyServices myServices = Get.find();
   sendOrder() async {
       statusRequest = StatusRequest.loading;
       order.finalPrice=44;
       order.primaryPrice=555;
       order.isOrderDesigner=0;
       order.type="logo";
       order.expectedLimitDate="2023-06-22";
        var response = await testData.sendData(order.toJson()
      //      {
      //    "type"                         :   order.type,
      //    //designer_id"                  :    1,
      //    "expected_limit_date"          :    order.expectedLimitDate,
      //    "primary_price"                :     order.primaryPrice,
      //    "final_price"                  :     order.finalPrice,
      //    "is_idea"                      :     order.isIdea,
      //    "description"                  :   order.description,
      //    "pereferce"                    :     order.pereferce
      // }
      );
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
         if (response['success']) {
         print("sucesss ");
         } else {
            statusRequest = StatusRequest.failure;
         }
      }
       update(); // Trigger UI update to reflect the fetched categories
   }

  void goTonext() {
       sendOrder();

  }

}