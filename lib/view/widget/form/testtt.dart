// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Login(),
//     );
//   }
// }
//
// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   final TextEditingController _detailIdeaController = TextEditingController();
//   final List<String> _mapList = ['Map 1', 'Map 2', 'Map 3'];
//   String? _selectedMap;
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
//           style: Theme.of(context)
//               .textTheme
//               .headline1!
//               .copyWith(color: Colors.grey),
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//         child: Form(
//           child: ListView(
//             children: [
//               SizedBox(height: 20),
//               SizedBox(height: 15),
//               MyWidget(
//                 controller: _detailIdeaController,
//               ),
//               SizedBox(height: 15),
//               CustomDropdownFormField(
//                 itemList: _mapList,
//                 value: _selectedMap,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedMap = value as String?;
//                   });
//                 },
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
