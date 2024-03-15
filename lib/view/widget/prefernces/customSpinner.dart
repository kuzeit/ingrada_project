// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../controller/PreferencesController.dart';
//
// class CustomSpinner extends GetView<PreferencesControllerImp> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 70,
//       height: 31,
//       margin: EdgeInsets.all(6),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         border: Border.all(color: Colors.grey),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: Obx(
//               () => DropdownButton(
//             onChanged: (value) {
//               controller.setSelectedValue(value);
//             },
//             items: controller.dropdownItems.map((String item) {
//               return DropdownMenuItem(
//                 value: item,
//                 child: Text(item),
//               );
//             }).toList(),
//             value: controller.selectedValue.value,
//             hint: Text("widget.hint"),
//             isExpanded: true,
//             icon: Icon(Icons.arrow_drop_down),
//             iconSize: 24,
//             elevation: 16,
//             style: TextStyle(color: Colors.black),
//             dropdownColor: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSpinner extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String?>? onChanged;
  final List<String> items;
  final String? hint;

  CustomSpinner({
    required this.selectedValue,
    required this.onChanged,
    required this.items,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      padding:EdgeInsets.all(6) ,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),

        child: DropdownButton(
          onChanged: onChanged,
          value: selectedValue,
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: new Text(item),
          );
        }).toList(),
          hint: hint != null ? Text(hint!) : null,
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down,),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          dropdownColor: Colors.white,
          underline: Container(), // Remove the default underline

        ),

    );
  }
}