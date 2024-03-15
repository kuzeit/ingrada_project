import 'package:engrada_project/controller/PreferencesValueController.dart';
import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/class/statusrequest.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/core/functions/handingdatacontroller.dart';
import 'package:engrada_project/core/services/services.dart';
import 'package:engrada_project/data/datasource/remote/items_data.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/categoriesmodel.dart';
import '../data/model/order.dart';



class ItemsControllerImp    extends PreferencesValueController implements GetxController {
  ItemsData testData = ItemsData(Get.find());
   late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  List<CategoriesModel>   categories=[];

   List data = [];

  int? catid=1;

  int? typeId=1;
  String? typeName;
   int? selectedCat=0;
int? selectedItem =-1 ;
Order order =Get.find();

   @override
  void onInit() {
    super.onInit();
     typeId =Get.arguments["typeId"];
    typeName= Get.arguments["typeName"];
     intialData();
    print("=============================== length ${typeId} ");

    super.onInit();
  }

  @override
  intialData() async {
      getCategories(typeId);


  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    getData(catid!);
    update();
  }

  @override
  getItems(catid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(catid,typeId!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        List<dynamic> responseData = response['data'];
      responseData.forEach((data1) {
        final item = ItemsModel.fromJson(Map<String, dynamic>.from(data1));
        item.isLiked = false;
        data.add(item);
        data.add(item); data.add(item); data.add(item); data.add(item);
      });

      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("=============================== Data \n   $response ");
    update();
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
        categories =responseData
            .map((data1) => CategoriesModel.fromJson(Map<String, dynamic>.from(data1)))
            .toList();
        catid=    categories[0].id;


        getData(catid!);

        getItems(catid!);

      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("=============================== length11 ${categories.length} ");
    update(); // Trigger UI update to reflect the fetched categories
  }
  selectItem(int index)
  {
     order.itemId=data[index].id;
order.typeId=data[index].typeId;
selectedItem=index;
     update();

  }
  goToNext(){
    order.preferenceId=catid;
    order.pereferce=categories[selectedCat!].name;
    int  valueItemSelected =data[selectedItem!].prefernceValueId;
    print("valueItemSelectede  : ${valueItemSelected}");

    if(valueItemSelected>0) {
      int index = preferncesValues
          .indexWhere((prefernves) => prefernves.id == valueItemSelected);
print("index : ${index}");
      order.value = dropdownItems[index];
      print("order.value  : ${order.value}");

    }
    print("price : ${order.finalPrice}");
    print("order.itemId : ${order.itemId}");
    print("order.preferenceId : ${order.preferenceId}");
    print("order.pereferce : ${order.pereferce}");

    Get.toNamed(AppRoute.form);


  }
}


























