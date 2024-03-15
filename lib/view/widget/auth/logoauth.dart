import 'package:engrada_project/core/constant/imgaeasset.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class LogoAuth extends StatelessWidget {
  const LogoAuth(
      {Key? key,
        required this.appImageAsset,
      })
      : super(key: key);  final String  appImageAsset;


  @override
  Widget build(BuildContext context) {
    return  Image.asset(
     appImageAsset ,
                width: ((200.0/412)*100).w,
                height: ((260.0/892)*100).h,
      fit: BoxFit.fill,
              );
  }
}
