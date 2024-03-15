import 'package:engrada_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'bindings/intialbindings.dart';
import 'core/localization/changeLocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Course',
      locale: controller.language,
      theme: controller.appTheme,
       initialBinding: InitialBindings(),
      // routes.dart: routes.dart,
      getPages: routes,
    );
  }
}
