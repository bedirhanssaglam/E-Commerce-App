import '../constants/enums/network_enums.dart';

extension NetworkExtensions on NetworkEnums {
  String get key {
    switch (this) {
      case NetworkEnums.products:
        return NetworkEnums.products.name;
      case NetworkEnums.category:
        return "${NetworkEnums.products.name}/${NetworkEnums.category.name}";
    }
  }
}
