import '../enums/icon_enums.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  final String appName = "Shop Bag";
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

  List<Map<String, String>> splashData = [
    {
      "text":
          "Free shipping on millions of items. Get the best of Shopping and entertainment with Shop Bag. Enjoy low prices.",
      "image": IconEnums.firstIntro.iconName,
    },
    {
      "text":
          "Enjoy the privilege of free and fast delivery for your purchases on valid products with Shop Bag. Find out how quickly your orders will be delivered in which city.",
      "image": IconEnums.secondIntro.iconName,
    },
    {
      "text":
          "Catch the selected deals on the 'Deals of the Day' page before anyone else. Also, take advantage of special discounts and opportunity days only for Shop Bag members.",
      "image": IconEnums.thirdIntro.iconName,
    },
  ];
}
