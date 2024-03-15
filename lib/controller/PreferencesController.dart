import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/class/statusrequest.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/core/functions/handingdatacontroller.dart';
import 'package:engrada_project/core/services/services.dart';
import 'package:engrada_project/data/datasource/remote/PreferencesData.dart';
import 'package:engrada_project/data/datasource/remote/items_data.dart';
import 'package:engrada_project/data/model/categoriesmodel.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/order.dart';
import 'PreferencesValueController.dart';





  class PreferencesControllerImp   extends   GetxController {
   PreferncesData testData = PreferncesData(Get.find());

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  List categories = [];
  int? typeId = 1;
   String? typeName="";
   String selectedCategoryName = '';
 int catId=-1;
 Order order= Get.find();
  @override
  void onInit() {
    super.onInit();
     typeId =Get.arguments['typeId'];
    typeName=Get.arguments['typeName'];

    intialData();
  }



  getCategories(typeId) async {
    categories.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getPreferences(typeId);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        List<dynamic> responseData = response['data'];
        responseData.forEach((data1) {
          final item = CategoriesModel.fromJson(Map<String, dynamic>.from(data1));
          categories.add(item);
        });
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("=============================== length11 ${categories.length} ");
    update(); // Trigger UI update to reflect the fetched categories
  }

  void selectCategory(int index) {
    catId = index;
     CategoriesModel selectedCategory = categories[index];
    selectedCategoryName = selectedCategory.name!;

    order.preferenceId=selectedCategory.id;
    order.pereferce=selectedCategoryName;
    update();
  }



  @override
  intialData() async {
    getCategories(typeId);
  }
  goTo()
  {
      Get.toNamed(AppRoute.colors);}


}














