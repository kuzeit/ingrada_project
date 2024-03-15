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
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../widget/auth/logoauth.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.put(SignUpControllerImp(),permanent: true);
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
       // onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
    builder: (controller) =>
    HandlingDataRequest(statusRequest: controller.statusRequest,widget:
    Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const SizedBox(height: 20),
                       CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 3, 20, "username");
                        },
                        mycontroller: controller.firstName,
                        hinttext: "firstName".tr,
                        iconData: Icons.person_outline,
                        labeltext: "firstName1".tr,
                       ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 40, "username");
                        },
                        mycontroller: controller.lastName,
                        hinttext: "lastName".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "lastName1".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: true,
                        valid: (val) {
                          return validInput(val!, 7, 11, "phone");
                        },
                        mycontroller: controller.phone,
                        hinttext: "22".tr,
                        iconData: Icons.phone_android_outlined,
                        labeltext: "21".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 30, "username");
                        },
                        mycontroller: controller.company,
                        hinttext: "company".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "company1".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 30, "username");
                        },
                        mycontroller: controller.country,
                        hinttext: "country".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "country1".tr,
                        // mycontroller: ,
                      ),

                      CustomButtomAuth(
                          text: "17".tr,
                          onPressed: () {
                             controller.signUp();
                          }),
                      const SizedBox(height: 40),
                      CustomTextSignUpOrSignIn(
                        textone: "25".tr,
                        texttwo: "26".tr,
                        onTap: () {
                          controller.goToSignIn();
                        },
                      ),
                    ]),
                  ),
                ))),
      ),
    );
  }
}
