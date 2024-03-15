
import 'package:engrada_project/core/class/crud.dart';
import 'package:engrada_project/linkapi.dart';
import 'package:engrada_project/core/constant/user.dart';

class SendOrderData {
  Crud crud;
  SendOrderData(this.crud);



  sendData( Map data) async {



    var response = await crud.postData1(AppLink.sendOrder,    data,user1.token);
    return response.fold((l) => l, (r) => r);
  }}
