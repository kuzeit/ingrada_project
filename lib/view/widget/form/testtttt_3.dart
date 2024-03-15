// import 'package:engrada_project/view/widget/form/testtt.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// class MyWidget extends StatelessWidget {
//   final TextEditingController controller;
//
//   const MyWidget({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onChanged: (value) {
//         print('Entered value: $value');
//       },
//       decoration: InputDecoration(
//         labelText: 'Detail Idea',
//         labelStyle: TextStyle(color: Colors.grey),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: EdgeInsets.zero,
//       ),
//       style: TextStyle(fontSize: 10.0),
//       controller: controller,
//     );
//   }
// }
//
// class CustomDropdownFormField extends StatelessWidget {
//   final List<String> itemList;
//   final String? value;
//   final Function(String?) onChanged;
//
//   const CustomDropdownFormField({
//     Key? key,
//     required this.itemList,
//     required this.value,
//     required this.onChanged,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       value: value,
//       onChanged: onChanged,
//       hint: value == null ? Text('Select Map') : null,
//       items: itemList.map((String item) {
//         return DropdownMenuItem(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//       style: TextStyle(color: Colors.black, fontSize: 24),
//       iconSize: 50,
//       isExpanded: true,
//     );
//   }
// }
//
// class LoginController extends GetxController {
//   final TextEditingController detailIdeaController = TextEditingController();
//   final List<String> mapList = ['Map 1', 'Map 2', 'Map 3'];
//   RxString selectedMap = "".obs;
//
//   void onSelectedMap(String? value) {
//     selectedMap.value = value ?? '';
//   }
//
//   @override
//   void onClose() {
//     detailIdeaController.dispose();
//     super.onClose();
//   }
// }
// class Login extends StatelessWidget {
//   final LoginController controller = Get.put(LoginController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         elevation: 0.0,
//         title: Text(
//           'Sign In',
//           style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//         child: Form(
//           child: ListView(
//             children: [
//               SizedBox(height: 20),
//               SizedBox(height: 15),
//               MyWidget(controller: controller.detailIdeaController),
//               SizedBox(height: 15),
//
//               CustomDropdownFormField(
//                 itemList: controller.mapList,
//                 value: controller.selectedMap.value.isNotEmpty ? controller.selectedMap.value : null,
//                 onChanged: controller.onSelectedMap,
//               ),
//               SizedBox(height: 15),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Sign In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(GetMaterialApp(
//     title: 'Login Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: Login(),
//   ));
// }