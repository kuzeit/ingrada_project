import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(String name ,String password) async {
    var response = await crud.postData(AppLink.login, {
      "name" : name ,
      "password" : password
    });
    return response.fold((l) => l, (r) => r);
  }
}
