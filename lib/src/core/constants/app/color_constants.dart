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
  Color carnation = const Color(0xFFFB5E5D);
  Color coral = const Color(0xFFFF7643);
  Color peachCream = const Color(0xFFFFECDF);
}
