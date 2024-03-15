import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class PreferncesValueData {
  Crud crud;
  PreferncesValueData(this.crud);


  getData(int id ) async {
  var response = await crud.postData1(AppLink.preferencesValue, { "prefernce_id":id},user1.token);
    return response.fold((l) => l, (r) => r);
  }
}
