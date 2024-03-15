 import 'package:engrada_project/data/model/PreferenceValueModel.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
 import '../data/datasource/remote/PreferencesData.dart';
import '../data/datasource/remote/preferenceValueData.dart';
import '../data/datasource/remote/preferenceValueData.dart';
import '../data/model/order.dart';

  abstract class PreferencesValueController extends GetxController {
   String selectedValue = 'types' ;
   PreferncesValueData preferncesValueData = PreferncesValueData(Get.find());
  MyServices myServices = Get.find();

   late StatusRequest statusRequest2;
   List<PreferenceValueModel> preferncesValues=[];

   List<String> dropdownItems =    ['types'];
  Order order= Get.find();

  @override
  void onInit() {
    super.onInit();
    //selectedValue.value = dropdownItems.first;
      }


  @override
  void setSelectedValue(String? value) {
    selectedValue = value!;
    print("selected value  : ${selectedValue}");
    update();
  }




  getData( int  selectedCat) async {
    preferncesValues.clear();
    dropdownItems.clear();
    dropdownItems.add("types");
    selectedValue = 'types';
    statusRequest2 = StatusRequest.loading;
    var response = await preferncesValueData.getData(selectedCat!);
    statusRequest2 = handlingData(response);
      if (StatusRequest.success == statusRequest2) {
        List<dynamic> responseData = response['data'];
       preferncesValues =responseData
           .map((data1) => PreferenceValueModel.fromJson(Map<String, dynamic>.from(data1)))
           .toList();
        for (var item in preferncesValues) {
          dropdownItems.add(item.name!);
        }

       } else {
        statusRequest2 = StatusRequest.failure;
      }

     update(); // Trigger UI update to reflect the fetched categories
  }
}
