import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/app/app_constants.dart';
import 'app_theme.dart';
import 'interface_text_theme.dart';

class AppThemeLight extends AppTheme with ITheme {
  static AppThemeLight? _instance;

  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: AppConstants.instance.fontFamily,
        textTheme: TextTheme(
          headline1: textThemeLight!.headline1,
          headline2: textThemeLight!.headline2,
          headline3: textThemeLight!.headline3,
          headline4: textThemeLight!.headline4,
          headline5: textThemeLight!.headline5,
          bodyText1: textThemeLight!.bodyText1,
          bodyText2: textThemeLight!.bodyText2,
          button: textThemeLight!.button,
        ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
            centerTitle: true,
            titleTextStyle: TextStyle(color: ColorConstants.instance.black),
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: ColorConstants.instance.black,
              size: 21,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark),
        inputDecorationTheme: InputDecorationTheme(
            focusColor: ColorConstants.instance.black,
            contentPadding: EdgeInsets.zero,
            filled: true,
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: const OutlineInputBorder()),
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: ColorScheme.light(
                onError: ColorConstants.instance.carnation,
              ),
            ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      );
}
