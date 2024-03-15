import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomButton({
    required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
     return
      MaterialButton(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,

        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(
          "Continue",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      );

  }
}