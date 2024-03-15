import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username ,String password ,String email ,String phone
      ,  country ,
       firstName  ,
   lastName ,
    company  ,
  ) async {
    var response = await crud.postData(AppLink.signUp, {

      "name" : username ,
      "password" : password  ,
      "email" : email ,
      "phone_number" : phone  ,
    "country" : country ,
    "first_name" : firstName  ,
    "last_name" : lastName ,
    "company" : company  ,



    });
    return response.fold((l) => l, (r) => r);
  }
}
