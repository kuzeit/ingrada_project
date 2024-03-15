import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/DesignerData.dart';
import '../data/model/desiner.dart';
import '../data/model/order.dart';

class DesignerController extends GetxController {
  List<Designer>   designers=[];

  int selectedDesignerIndex = -1;
  DesignerData designerData = DesignerData(Get.find());
  late StatusRequest statusRequest;
  Order order=Get.find();
  MyServices myServices = Get.find();


  @override
  void onInit() {
    getDesigners();
  }

  @override
  getDesigners() async {
    designers.clear();
    statusRequest = StatusRequest.loading;
    var response = await designerData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        List<dynamic> responseData = response['data'];
        designers = responseData
            .map((data1) => Designer.fromJson(Map<String, dynamic>.from(data1)))
            .toList();
        if(designers.isEmpty) {
          designers=[
            Designer(id: 1,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 2, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 3, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 4,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 5, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 6, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 7,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 8, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 9, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 10,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 11, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 12, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 13, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 14,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 15, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 16, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 17,category:"", fullname: "John Doe", avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 18, fullname: "Jane Smith", category:"",avatar:  'assets/images/logoIngrad.jpg'),
            Designer(id: 19, fullname: "Alex Johnson",category:"", avatar:  'assets/images/logoIngrad.jpg'),

          ];
        }

      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("=============================== Data \n   $response ");
    update();
  }






  void selectDesigner(int index) {

    selectedDesignerIndex = index;
    update(); }

  void goTonext() {
    Get.toNamed(AppRoute.fullOrder);
    order.designerId=designers[selectedDesignerIndex].id;
    order.designerName=designers[selectedDesignerIndex].fullname;

  }

}
