import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  ColorConstants._init();

  Color black = const Color(0xFF252525);
  Color emerald = const Color(0xFF51CF67);
  Color atlantis = const Color(0xFF50D63B);
  Color carnation = const Color(0xFFFB5E5D);
  Color flamingo = const Color(0xFFF16A26);
  Color jaffa = const Color(0xFFF17547);
  Color azure = const Color(0xFF1383F1);
  Color alabester = const Color(0xFFF8F8F8);
  Color swissCoffee = const Color(0xFFD8D3D3);
  Color seashell = const Color(0xFFF1F1F1);
}
