import 'package:engrada_project/core/class/crud.dart';
import 'package:get/get.dart';

import '../data/model/order.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start 
    Get.put(Crud()) ;
    Get.put(Order()) ;

  }
}
