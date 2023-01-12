import 'package:e_commerce/src/core/constants/app/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextThemeLight {
  static TextThemeLight? _instance;
  static TextThemeLight? get instance {
    _instance ??= TextThemeLight._init();
    return _instance;
  }

  TextThemeLight._init();

  final TextStyle headline1 = TextStyle(
    fontSize: 17.sp,
    fontFamily: AppConstants.instance.fontFamily,
    fontWeight: FontWeight.w500,
  );

  final TextStyle headline2 = TextStyle(
    fontSize: 18.sp,
    fontFamily: AppConstants.instance.fontFamily,
    fontWeight: FontWeight.w600,
  );

  final TextStyle headline3 = TextStyle(
    fontSize: 19.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle headline4 = TextStyle(
    fontSize: 22.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle headline5 = TextStyle(
    fontSize: 25.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle subtitle1 = TextStyle(
    fontSize: 11.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle subtitle2 = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle bodyText1 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  final TextStyle bodyText2 = TextStyle(
    fontSize: 14.sp,
    fontFamily: AppConstants.instance.fontFamily,
  );

  final TextStyle button = TextStyle(fontSize: 21.sp);
}
