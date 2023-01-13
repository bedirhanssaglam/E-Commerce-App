import 'package:e_commerce/src/core/constants/app/app_constants.dart';
import 'package:e_commerce/src/core/constants/app/color_constants.dart';
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
    color: ColorConstants.instance.black,
  );

  final TextStyle headline2 = TextStyle(
    fontSize: 18.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle headline3 = TextStyle(
    fontSize: 19.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle headline4 = TextStyle(
    fontSize: 22.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle headline5 = TextStyle(
    fontSize: 25.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle subtitle1 = TextStyle(
    fontSize: 11.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle subtitle2 = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppConstants.instance.fontFamily,
    color: ColorConstants.instance.black,
  );

  final TextStyle button = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );
}
