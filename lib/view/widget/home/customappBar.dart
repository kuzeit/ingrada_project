import 'package:engrada_project/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Engrada'),
      backgroundColor: AppColor.primaryColor1,
      elevation: 4.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          // Add your menu button functionality here
        },
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only( right: 34),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/engrada/profil_img.png'),
            radius: 24.0,

          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}