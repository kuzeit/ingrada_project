import 'package:engrada_project/core/class/statusrequest.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/core/functions/handingdatacontroller.dart';
import 'package:engrada_project/core/services/services.dart';
import 'package:engrada_project/data/datasource/remote/home_data.dart';
import 'package:engrada_project/data/model/itemsmodel.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LikeController extends GetxController {
  addFavorite(int i, dynamic items);
}

class LikeControllerImp extends LikeController {
  @override
  addFavorite(int i, dynamic items) {
    print("befor .......... ${items[i].isLiked}");
    items[i].isLiked = !items[i].isLiked;
    print("after .......... ${items[i].isLiked}");

    update();
  }
}





