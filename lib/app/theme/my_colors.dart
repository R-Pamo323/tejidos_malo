import 'dart:ui';

class MyColors {
  MyColors._internal();
  static final MyColors _instance = MyColors._internal();
  static MyColors get instance => _instance;

  final Color yellowCF9201 = Color(0xffcf9201);
  final Color gray4B4A4E = Color(0xff4b4a4e);
  final Color grayE3E4E8 = Color(0xffe3e4e8);
  final Color white = Color(0xffffffff);
  final Color background = Color(0xfff9f9f7);
  final Color bgBottomNavigationBar = Color(0xfffbfafb);
  final Color black = Color(0xff000000);
}
