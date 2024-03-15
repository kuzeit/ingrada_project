import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class TypesData {
  Crud crud;
  TypesData(this.crud);



  getData() async {



    var response = await crud.postData1(AppLink.types, {
    },user1.token);
    return response.fold((l) => l, (r) => r);
  }}
