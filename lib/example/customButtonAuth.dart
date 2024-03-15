// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../constant/color.dart';
//
// class CustomButtomAuth extends StatelessWidget {
//   final String text;
//   final void Function()? onPressed;
//
//   const CustomButtomAuth({Key? key, required this.text, this.onPressed})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return UnconstrainedBox(
//
//       child: Container(
//
//         margin: const EdgeInsets.only(top: 10),
//         child: MaterialButton(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
//
//           shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black),
//               borderRadius: BorderRadius.circular(20)),
//           onPressed: onPressed,
//           color: Colors.yellow,
//           textColor: Colors.black,
//           child: Text(
//             text,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//         ),
//       ),
//     );
//   }
// }