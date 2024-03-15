import 'package:engrada_project/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';

 class ItemsPreference extends StatelessWidget {
  final int index;
  final List categories;
  final bool isSelected;
  final VoidCallback onTap;

  const ItemsPreference({
    Key? key,
    required this.index,
    required this.categories,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        elevation: 2.0,
        child: Stack(
          children: [
            Column(
              children: [
                Image.network(
                  "${categories[index].image?.replaceFirst("http://192.168.43.116:8000/storage/", "")}",
                  fit: BoxFit.fill,
                  width: 153,
                  height: 146,
                ),
                Text(categories[index].name),

              ],
            ),
            if (isSelected)
              Container(
                width: 153,
                height: 146,
                color: Colors.black.withOpacity(0.2),
              ),

                if (isSelected)
                  Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size:30,),
                  ),
          ],
        ),
      ),
    );
  }
}
// class PreferencesControllerImp extends GetxController implements PreferencesController {
//   RxString selectedValue = ''.obs;
//   List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
//   PreferncesData testData = PreferncesData(Get.find());
//   late StatusRequest statusRequest;
//
//   MyServices myServices = Get.find();
//
//   List<CategoriesModel> categories = [];
//   int? typeId = 1;
//   bool isItemSelected = false;
//   String selectedCategoryName = '';
//
//   @override
//   void onInit() {
//     super.onInit();
//     selectedValue.value = dropdownItems.first;
//     typeId = 1;
//
//     intialData();
//   }
//
//   @override
//   void setSelectedValue(String? value) {
//     selectedValue.value = value!;
//   }
//
//   getCategories(typeId) async {
//     categories.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getPreferences(typeId);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['success']) {
//         List<dynamic> responseData = response['data'];
//         responseData.forEach((data1) {
//           final item = CategoriesModel.fromJson(Map<String, dynamic>.from(data1));
//           categories.add(item);
//         });
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     print("=============================== length11 ${categories.length} ");
//     update(); // Trigger UI update to reflect the fetched categories
//   }
//
//   void selectCategory(int index) {
//     isItemSelected = true;
//     selectedCategoryName = categories[index].name;
//     update();
//   }
//
//   void clearSelection() {
//     isItemSelected = false;
//     selectedCategoryName = '';
//     update();
//   }
//
//   @override
//   intialData() async {
//     getCategories(typeId);
//   }
// }