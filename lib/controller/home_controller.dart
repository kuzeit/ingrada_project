import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/home_data.dart';
import '../data/datasource/remote/typesData.dart';
import '../data/model/designType.dart';
import '../data/model/itemsmodel.dart';

abstract class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  TypesData typesData = TypesData(Get.find());

  HomeData homedata = HomeData(Get.find());
  List types = [];
  List<Map<String, dynamic>> sectionData = [];

  late StatusRequest statusRequest;

  @override
  void onInit() {
    initialData();
    super.onInit();
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
  initialData() async {
    await getTypes();
     await getSectionData();
  }

  goToGallary(int id) {
    Get.toNamed(AppRoute.allGallary, arguments: {
      "typeId": id,
 "typeName" :types[id-1].name,
    });
  }

  Future<List<Map<String, dynamic>>> getSectionData() async {

    types.forEach((type) {
      int typeId = type.id;
      print("typeId $typeId");
      String title = type.name;
      print("title $title");

      List<dynamic> items = [];
      getdata(typeId, items);
      sectionData.add({"typeId": typeId, "title": title, "items": items});
    });
    return sectionData;
  }


  getdata(int type_id ,dynamic items_) async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData(type_id);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        List<dynamic> responseData = response['data'];
        responseData.forEach((data) {
          final item = ItemsModel.fromJson(Map<String, dynamic>.from(data));
          item.isLiked = false;
          items_.add(item);
        });
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

update();


}}