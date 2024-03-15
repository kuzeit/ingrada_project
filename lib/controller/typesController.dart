import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/class/statusrequest.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/core/functions/handingdatacontroller.dart';
import 'package:engrada_project/core/services/services.dart';
import 'package:engrada_project/data/datasource/remote/items_data.dart';
import 'package:engrada_project/data/model/designType.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/datasource/remote/typesData.dart';
import '../data/model/order.dart';


abstract class typesController extends GetxController {
  intialData();
   gettypes(String categoryid);
  goToPageProductDetails(ItemsModel itemsModel);
}

class typesControllerImp extends GetxController {
  TypesData typesData = TypesData(Get.find());
  late StatusRequest statusRequest;
Order order=Get.find();
  MyServices myServices = Get.find();

    int?  indexSelected=-1;

  List types = [];


  @override
  void onInit() {

    intialData();

    super.onInit();
  }

  @override
  intialData() async {
     getTypes();

  }


  @override
  getTypes() async {
    types.clear();
    statusRequest = StatusRequest.loading;
    var response = await typesData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        List<dynamic> responseData = response['data'];
        responseData.forEach((data1) {
          final designType = DesignType.fromJson(Map<String, dynamic>.from(data1));
           types.add(designType);
        });
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("=============================== Data \n   $response ");
    update();
  }

  @override
  goToNext( ) {
    Map arguments= {
      "typeId": indexSelected! + 1,
    "typeName" :types[indexSelected!].name,

    };
    if(order.isSimilar!)
      Get.toNamed(AppRoute.allGallary, arguments: arguments);
    else
      Get.toNamed(AppRoute.preferences, arguments: arguments);

   }

  void select(int? i) {
    indexSelected=i;
    order.type= types[i!].name;
    order.typeId=types[i!].id;
    order.finalPrice=types[i!].price;
     update();
print("order price :  ${ order.finalPrice}    ...order.type :  ${ order.type} "
    " order.typeId :  ${ order.typeId}        ");

  }
}
