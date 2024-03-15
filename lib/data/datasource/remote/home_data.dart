import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/constant/user.dart';

import 'package:engrada_project/linkapi.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/services/services.dart';

class HomeData {

  Crud crud;
  HomeData(this.crud);
  getData(int type_id) async {

     var response = await crud.postData1(AppLink.homepage, { "type_id":type_id},user1.token);
    return response.fold((l) => l, (r) => r);
  }

}
