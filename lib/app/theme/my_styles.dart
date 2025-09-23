import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyStyles {
  MyStyles._internal();
  static final MyStyles _instance = MyStyles._internal();
  static MyStyles get instance => _instance;

  //Yellow
  final TextStyle yellow36W700Outfit = TextStyle(
    color: MyColors.instance.yellowCF9201,
    fontSize: 36.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w700,
  );

  //Gray
  final TextStyle gray16W500OpenSans = TextStyle(
    color: MyColors.instance.gray4B4A4E,
    fontSize: 16.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w500,
  );

  //White
  final TextStyle white16W500Outfit = TextStyle(
    color: MyColors.instance.white,
    fontSize: 16.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w700,
  );
}
