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
          button: textThemeLight!.button,
        ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              elevation: 0,
              centerTitle: true,
              color: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
        scaffoldBackgroundColor: Colors.white,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      );
}
