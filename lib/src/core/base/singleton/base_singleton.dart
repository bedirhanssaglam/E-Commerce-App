import 'package:flutter/cupertino.dart';

import '../../constants/app/app_constants.dart';
import '../../constants/app/color_constants.dart';
import '../functions/base_functions.dart';

abstract class BaseSingleton {
  AppConstants get constants => AppConstants.instance;
  ColorConstants get colors => ColorConstants.instance;
  BaseFunctions get functions => BaseFunctions.instance;
  WidgetsBinding get widgetsBinding => WidgetsBinding.instance;
}
