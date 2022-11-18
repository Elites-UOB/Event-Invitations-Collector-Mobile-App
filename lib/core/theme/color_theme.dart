import 'dart:ui';
import 'package:flutter/material.dart';

class Palette {
  static const error = Color(0xfffa3838);
  static const primaryColor = Color(0xFF3d4451); //
  static const backgroundColor = Color(0xfff4fdfe);
  static const whiteColor = Color(0xffffffff);
  static const greyColor = Color(0x99FFFFFF); //
  static const blackColor = Color(0xff000000);
  static const secondaryColor = Color(0xff8d6aeb);
  static const loginUp = Color(0xffedecf5);
  static const loginDn = Color(0xffd2c2ed);
}

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith();
  static ThemeData customLightTheme = ThemeData.light().copyWith();
}
