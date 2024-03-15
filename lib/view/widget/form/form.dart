import 'package:engrada_project/core/functions/validinput.dart';
import 'package:engrada_project/view/widget/form/MyWidget.dart';
import 'package:engrada_project/view/widget/form/mmm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/FormController.dart';
import '../continueButton.dart';
import '../home/customappBar.dart';
import 'CustomDropdownFormField.dart';



class FormInformation extends StatelessWidget {
  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
        color: Colors.white,  // Set the background color to red

                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Form(
                  child: ListView(
                    children: [
                      Text(
                        'We need some information about your project and your order, please fill out the form.',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                          fontFamily: 'Salsa',
                        ),
                      ),
                      SizedBox(height: 18),
                      Image.asset(
                        'images/engrada/order.png',
                        width: 140,
                        height: 160,
                         fit: BoxFit.contain,
                      ),
                      SizedBox(height: 12),
                       title(),
                       scopes(),
                       idea(),
                       visualIdentity(),
                       types(),
                       size(),

                       pages(),
                       description(),

                        SizedBox(height: 15,),

                      CustomButton(
                        onPressed: () {
                          controller.goTonext();

                          // Handle button press
                        },
                      ),
                    ],
                  ),
                ),
              ),



    );
  }
  CustomForm title() {

    return CustomForm(
      visible: true,
       valid: (val) {
        return validInput(val!, 1, 100, "username");},
      mycontroller: controller.title,
      labeltext: "title",
    );
  }
  CustomForm description() {

    return CustomForm(
      visible: true,
       valid: (val) {
        return validInput(val!, 1, 100, " ");},
      mycontroller: controller.description,
      labeltext: "description",
    );
  }
  CustomForm pages() {

    return CustomForm(
      visible: controller.visiblePages,
      isNumber: true,
      valid: (val) {
        return validInput(val!, 1, 100, "phone");},
       mycontroller: controller.page,
      labeltext: "number of pages ",
    );
  }

  CustomDropdownFormField idea()
  { return CustomDropdownFormField(
  hintText: "there is an idea for your project ",
  itemList: controller.IdeaList,
  visible: controller.visibleIdea,
  value: controller.idea.isNotEmpty ?
  controller.idea : null,
  onChanged: controller.onSelectedIdea,
  );
}
  CustomDropdownFormField visualIdentity()
  { return CustomDropdownFormField(
    visible: controller.visibleVisualIdentity,

    hintText: "with visual identity ?",
    itemList: controller.withVisualIdentityList,
    value: controller.visualIdentity.isNotEmpty ?
    controller.visualIdentity : null,
    onChanged: controller.onSelectedVisualIdentity,
  );
  }
  CustomDropdownFormField size()
  { return CustomDropdownFormField(
    visible: controller.visibleSize,

    hintText: "size ",
    itemList: controller.sizeList,
    value: controller.size.isNotEmpty ?
    controller.size : null,
    onChanged: controller.onSelectedSize,
  );
  }
  CustomDropdownFormField types()
  { return CustomDropdownFormField(
    visible: controller.visibleTypePreference,

    hintText: "type ",
    itemList: controller.typePreferencelist,
    value: controller.typePreference.isNotEmpty ?
    controller.typePreference : null,
    onChanged: controller.onSelectedTypePreference,
  );
  }
  CustomDropdownFormField scopes()
  { return CustomDropdownFormField(
    hintText: "Industry",
    visible:true ,
    itemList: controller.scopList,
    value: controller.scope.isNotEmpty ?
    controller.scope : null,
    onChanged: controller.onSelectedScop,
  );
  }

}