import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/view/screen/homepage.dart';
//import 'package:ecommercecourse/view/screen/notification.dart';
import 'package:engrada_project/view/screen/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/order.dart';
import '../view/screen/homepage.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
Order order=Get.find();
  List<Widget> listPage = [
      HomePage(),
    // NotificationView() ,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
   ];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home},

       {"title": "settings", "icon": Icons.settings}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

  void chooseSimilar() {
    order.isSimilar=true;
    update();
     Get.toNamed(AppRoute.types );

  }
  void chooseCustomized() {
    order.isSimilar=false;
    update();
     Get.toNamed(AppRoute.types);

  }

}
