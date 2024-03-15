import 'package:flutter/material.dart';

class CustomFieldOrder extends StatelessWidget {
  final String? title;

  const CustomFieldOrder({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: title != null && title!.isNotEmpty
          ? Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey, // Replace with your desired color
        ),
        margin: EdgeInsets.only(top: 6),
        padding: EdgeInsets.all(6),
        child: Text(
          title!,
          style: TextStyle(fontSize: 16),
        ),
      )
          : Container(), // Return an empty Container if title is null or empty
    );
  }
}
