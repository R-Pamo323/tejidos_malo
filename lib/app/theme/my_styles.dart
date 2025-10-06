import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyStyles {
  MyStyles._internal();
  static final MyStyles _instance = MyStyles._internal();
  static MyStyles get instance => _instance;

  //Yellow
  final TextStyle yellow18W700Outfit = TextStyle(
    color: MyColors.instance.yellowCF9201,
    fontSize: 18.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w700,
  );

  final TextStyle yellow20W700Outfit = TextStyle(
    color: MyColors.instance.yellowCF9201,
    fontSize: 20.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w700,
  );

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
  final TextStyle white12W700OpenSans = TextStyle(
    color: MyColors.instance.white,
    fontSize: 12.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w700,
  );

  final TextStyle white14W400OpenSans = TextStyle(
    color: MyColors.instance.white,
    fontSize: 14.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w400,
  );

  final TextStyle white14W700OpenSans = TextStyle(
    color: MyColors.instance.white,
    fontSize: 14.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w700,
  );

  final TextStyle white16W500Outfit = TextStyle(
    color: MyColors.instance.white,
    fontSize: 16.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w700,
  );

  //Black
  final TextStyle black14W500Outfit = TextStyle(
    color: MyColors.instance.black,
    fontSize: 14.0,
    fontFamily: "Outfit",
    fontWeight: FontWeight.w500,
  );

  final TextStyle black14W400OpenSans = TextStyle(
    color: MyColors.instance.black,
    fontSize: 14.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w400,
  );

  final TextStyle black14W500OpenSans = TextStyle(
    color: MyColors.instance.black,
    fontSize: 14.0,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w500,
  );
}
