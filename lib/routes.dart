import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/core/middleware/mymiddleware.dart';
import 'package:engrada_project/view/fullOrder.dart';
 import 'package:engrada_project/view/homescreen.dart';
import 'package:engrada_project/view/screen/Artboard.dart';
import 'package:engrada_project/view/screen/Fonts.dart';
import 'package:engrada_project/view/screen/colors.dart';
import 'package:engrada_project/view/screen/homepage.dart';
import 'package:engrada_project/view/screen/auth/language.dart';
import 'package:engrada_project/view/screen/auth/login.dart';
import 'package:engrada_project/view/screen/auth/signup2.dart';
import 'package:engrada_project/view/screen/auth/signup.dart';
import 'package:engrada_project/view/screen/items.dart';
import 'package:engrada_project/view/screen/preferences.dart';
 import 'package:engrada_project/view/screen/types.dart';
import 'package:engrada_project/view/widget/form/form.dart';
 import 'package:get/get.dart';

import 'view/screen/designers.dart';
import 'view/widget/Artboard/Artboard.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    //name: "/", page: () =>   FormInformation(), middlewares: [MyMiddleWare()]

     name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]
  ),
   //GetPage(name: "/test", page: () =>  MyScrollView()),
   GetPage(name: AppRoute.colors, page: () =>   ColorsPage()),

  GetPage(name: AppRoute.form, page: () =>  FormInformation()),
  GetPage(name: AppRoute.preferences, page: () =>  Preferences()),
  GetPage(name: AppRoute.fullOrder, page: () =>  FullOrder()),

   GetPage(name: AppRoute.login, page: () =>  Login()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.signUp2, page: () => const SignUp2()),
   GetPage(name: AppRoute.allGallary, page: () => const Items()),
  GetPage(name: AppRoute.types, page: () => const Types()),
  GetPage(name: AppRoute.fonts, page: () =>   Fonts()),
  GetPage(name: AppRoute.artBoard, page: () =>   ArtBoardPage()),

  GetPage(name: AppRoute.designers, page: () =>   Designers()),

//  Auth
   ];
