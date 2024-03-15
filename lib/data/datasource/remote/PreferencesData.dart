import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class PreferncesData {
  Crud crud;
  PreferncesData(this.crud);


  getPreferences(int id ) async {



    var response = await crud.postData1(AppLink.preferences, { "type_id":id},user1.token);
    return response.fold((l) => l, (r) => r);
  }
   }
