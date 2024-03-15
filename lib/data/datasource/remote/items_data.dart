import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);


  getPreferences(int id ) async {



    var response = await crud.postData1(AppLink.preferences, { "type_id":id},user1.token);
    return response.fold((l) => l, (r) => r);
  }
  getData(int preference_id,int id ) async {



      var response = await crud.postData1(AppLink.homepage, {"prefernce_id":preference_id, "type_id":id},user1.token);
      print("..............................................................$preference_id.....................................");
      return response.fold((l) => l, (r) => r);
    }}
