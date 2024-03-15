 //import 'package:engrada_project/core/class/handlingdataview.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/functions/alertexitapp.dart';
import 'package:engrada_project/core/functions/validinput.dart';
import 'package:engrada_project/view/widget/auth/custombuttonauth.dart';
import 'package:engrada_project/view/widget/auth/customtextbodyauth.dart';
import 'package:engrada_project/view/widget/auth/customtextformauth.dart';
import 'package:engrada_project/view/widget/auth/customtexttitleauth.dart';
import 'package:engrada_project/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/signupController.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../widget/auth/logoauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp(),permanent: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
          //onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
            builder: (controller) =>
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const SizedBox(height: 20),
                      const LogoAuth(appImageAsset: AppImageAsset.signUp,),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 3, 20, "username");
                        },
                        mycontroller: controller.username,
                        hinttext: "23".tr,
                        iconData: Icons.person_outline,
                        labeltext: "20".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 40, "email");
                        },
                        mycontroller: controller.email,
                        hinttext: "12".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "18".tr,
                        // mycontroller: ,
                      ),
                       CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 30, "password");
                        },
                        mycontroller: controller.password,
                        hinttext: "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
                        // mycontroller: ,
                      ),
                      CustomButtomAuth(
                          text: "continue".tr,
                          onPressed: () {
                            controller.goToFinalSignIn();

                          }),
                      const SizedBox(height: 40),
                      CustomTextSignUpOrSignIn(
                        textone: "25".tr,
                        texttwo: "26".tr,
                        onTap: () {
                          controller.goToFinalSignIn();

                        },
                      ),
                    ]),
                  ),
                )),
          ),
    );
  }
}
