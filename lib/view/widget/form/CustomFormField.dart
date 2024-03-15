import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  const CustomFormField({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    required this.mycontroller,
    required this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        onChanged: (value) {
          print('Entered value: $value');
        },
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labeltext),
          ),
        ),
      ),
    );
  }
}