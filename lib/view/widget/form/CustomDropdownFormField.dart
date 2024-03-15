import 'package:flutter/material.dart';



class CustomDropdownFormField extends StatelessWidget {
  final List<String> itemList;
  final String hintText;

  final String? value;
  final Function(String?) onChanged;
  final bool visible;
  const CustomDropdownFormField({
    Key? key,
    required this.itemList,
    required this.value,
    required this.onChanged,
    bool? visible, required this.hintText,
  }) : visible = visible ?? false, // Set default value of visible to false if it's null
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Visibility(
        visible: visible,
      child:
      DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      hint: value == null ? Text(hintText, style: TextStyle(color: Colors.grey,fontSize:15 ,fontWeight: FontWeight.w600 ), ) : null,
      items: itemList.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
        style: TextStyle(color: Colors.grey,fontSize:15 ,fontWeight: FontWeight.w600 ),
      iconSize: 20,

      isExpanded: true,
      ));
  }
}
// final List<String> _mapList = ['Map 1', 'Map 2', 'Map 3'];
// String? _selectedMap;
//
// CustomDropdownFormField(
// itemList: _mapList,
// value: _selectedMap,
// onChanged: (value) {
// setState(() {
// _selectedMap = value as String?;
// });
// },
// ),
// class CustomDropdownFormField extends StatelessWidget {
//   final List<String> itemList;
//   final String value;
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
//     return DropdownButtonFormField(
//       value: value,
//       onChanged: onChanged,
//       hint: Text('Select a Map'),
//       items: itemList.map((String item) {
//         return DropdownMenuItem(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//       style: TextStyle(color: Colors.black, fontSize: 24),
//       iconSize: 50,
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Custom Dropdown Button'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//
//             child:
//             CustomDropdownFormField(
//               itemList: ['Map 1', 'Map 2', 'Map 3'],
//               value: 'Map 1',
//               onChanged: (selectedItem) {
//                 // Handle the selected item here
//                 print('Selected item: $selectedItem');
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
