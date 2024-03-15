import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonData extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const IconButtonData({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: 40),
      color: Colors.deepPurpleAccent,
      onPressed: onPressed,
    );
  }
}