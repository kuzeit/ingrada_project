import 'package:engrada_project/view/widget/form/MyWidget.dart';
import 'package:engrada_project/view/widget/form/testtt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../controller/FormController.dart';
import '../../../core/functions/validinput.dart';
import 'CustomDropdownFormField.dart';



class Login extends StatelessWidget {
  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          child: ListView(
            children: [
              SizedBox(height: 20),
              SizedBox(height: 15),
              CustomForm(
                 isNumber: false,

                valid: (val) {
                  return validInput(val!, 1, 100, "username");
                },
                mycontroller: controller.title,
                 labeltext: "18".tr,
              ),
              CustomForm(
                isNumber: false,

                valid: (val) {
                  return validInput(val!, 1, 100, "username");
                },
                mycontroller: controller.title,
                labeltext: "18".tr,
              ),
              SizedBox(height: 15),

              // CustomDropdownFormField(
              //
              //   itemList: controller.IdeaList,
              //   value: controller.selectedIdea.value.isNotEmpty ?
              //   controller.selectedIdea.value : null,
              //   onChanged: controller.onSelectedIdea,
              // ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(GetMaterialApp(
    title: 'Login Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Login(),
  ));
}