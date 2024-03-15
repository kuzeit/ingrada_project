import 'package:engrada_project/core/constant/routes.dart';
 import 'package:engrada_project/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/localization/changeLocal.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Arabic",
                  onPressed: () {
               controller.changeLang("ar");
                     Get.toNamed(AppRoute.login) ;
                  }),
              CustomButtonLang(
                  textbutton: "English",
                  onPressed: () {
                    controller.changeLang("en");
                      Get.toNamed(AppRoute.login) ;
                  }),
            ],
          )),
    );
  }
}
