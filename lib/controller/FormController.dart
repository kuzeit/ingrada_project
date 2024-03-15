import 'package:engrada_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/order.dart';

class FormController extends GetxController {

  final List<String> IdeaList = ['ready idea',
    'an idea that need discussion ', 'No thing'];
  final List<String> withVisualIdentityList = ['yes',
    'No'];
  final List<String> scopList = ['sport', 'Drugs','restaurant','other'];
  final List<String> sizeList = ['44x55', '55x57'];
  final List<String> typePreferencelist = ['post', 'story'];
  final TextEditingController  description = TextEditingController();
  final TextEditingController title = TextEditingController();
  final TextEditingController page = TextEditingController();

   String idea =""  ;
  String visualIdentity  ="" ;
   String size  ="" ;
  String scope  ="" ;

   String typePreference  ="" ;
  bool visibleIdea = false;
  bool visibleSize = false;
  bool visibleVisualIdentity = false;
  bool visibleTypePreference = false;
  bool visiblePages = false;
  bool visibleScope = true;

  bool visibleDescription = true;
  bool visibleTitle = true;

  void onSelectedSize(String? value) {
     size = value ?? '';
     update();

  }
  void onSelectedScop(String? value) {
    scope = value ?? '';
update();
  }

  void onSelectedIdea(String? value) {
    idea = value ?? '';

    update();

  }void onSelectedTypePreference(String? value) {
    typePreference = value ?? '';
    update();

  }void onSelectedVisualIdentity(String? value) {
    visualIdentity = value ?? '';
    update();

  }
  Order order = Get.find();
  @override
  @override
  void onInit() {
    super.onInit();
    // Call the appropriate initialization method based on the selected form
    int? selectedForm = order.typeId ; // Replace with your selected form
    switch (selectedForm) {
      case 3:
        onInitFormSocial();
        break;
      case 1:
        onInitFormLogo();
        break;
      case 4:
        onInitFormProduct();
        break;
      case 2:
        onInitFormCoverBooks();
        break;
    }
  }

  void onInitFormSocial() {
    visibleTypePreference = true;
  }

  void onInitFormLogo() {
    visibleVisualIdentity = true;
    visibleIdea = true;
  }

  void onInitFormProduct() {
    visibleSize = true;
  }

  void onInitFormCoverBooks() {
    visibleSize = true;
    visiblePages = true;
    visibleTypePreference = true;
  }

  @override
  void onClose() {
    description.dispose();
    title.dispose();
    page.dispose();

    super.onClose();
  }



  void goTonext() {
    if(description.text.isNotEmpty)
      order.description=description.text;
    if(title.text.isNotEmpty)
      order.title=title.text;
    if( page.text.isNotEmpty)
      order.numberPages=page.text as int?;
    if( page.text.isNotEmpty)
      order.numberPages=page.text as int?;
    if(idea.isNotEmpty) {
      order.idea=idea;

      if (IdeaList.indexOf(idea!) == 1 || IdeaList.indexOf(idea!) == 2)
        order.isIdea = 1;
      else
        order.isIdea = 0;
    }
    if( size.isNotEmpty)
      order.sizeId=sizeList.indexOf(size)+1;
    if( scope.isNotEmpty)
      order.scope=scope;

    if( typePreference.isNotEmpty)
      order.value=typePreference;
    if( visualIdentity.isNotEmpty)
      if(visualIdentity.isNotEmpty) {
        order.visualIdentity=visualIdentity;
        if (withVisualIdentityList.indexOf(idea!) == 1   )
          order.isVisualIdentity = 1;
        else
          order.isVisualIdentity = 0;
      }
    Get.toNamed(AppRoute.colors);

  }
}