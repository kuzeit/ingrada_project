 import 'package:engrada_project/core/constant/routes.dart';
 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/auth/signup.dart';


abstract class SignUpController extends GetxController {
   goToSignIn();
   goToFinalSignIn();
   signUp();

}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController country;
  late TextEditingController company;

  SignupData signupData = SignupData(Get.find());



  List data = [];



  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();


    firstName = TextEditingController();
    lastName = TextEditingController();
    company = TextEditingController();
    country = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();


    firstName.dispose();
    lastName.dispose();
    company.dispose();
    country.dispose();



    super.dispose();
  }
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);

  }

  @override
  goToFinalSignIn() {
    Get.offNamed(AppRoute.signUp2);
   }

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update() ;

      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text,country.text,firstName.text,lastName.text,company.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {





          } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {

    }
  }
}
