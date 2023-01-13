import '../enums/icon_enums.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  final String appName = "The e-Commerce";
  final String fontFamily = 'MonaSans';

  final List<String> categoryImages = [
    IconEnums.electronics.iconName,
    IconEnums.womenClothes.iconName,
    IconEnums.menClothes.iconName,
    IconEnums.jewelery.iconName,
  ];

  final List<String> categoryNames = [
    "Electronics",
    "Women",
    "Men",
    "Jewelery",
  ];
}
