import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class DesignerData {
  Crud crud;
  DesignerData(this.crud);



  getData() async {



    var response = await crud.postData1(AppLink.designers, {
    },user1.token);
    return response.fold((l) => l, (r) => r);
  }}
