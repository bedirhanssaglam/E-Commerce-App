import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseFunctions {
  static BaseFunctions? _instance;
  static BaseFunctions get instance {
    _instance ??= BaseFunctions._init();
    return _instance!;
  }

  BaseFunctions._init();

  Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator()
          : const CircularProgressIndicator(),
    );
  }

  IconButton platformBackButton({
    required VoidCallback onPressed,
    Color? color = Colors.black,
  }) {
    return Platform.isIOS
        ? IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios,
              color: color,
            ),
          )
        : IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back,
              color: color,
            ),
          );
  }

  Widget errorText(String errorMessage) {
    return Center(
      child: Text(errorMessage),
    );
  }

  String toShortString(String value, {int countCharacter = 15}) {
    return value.length > countCharacter
        ? "${value.substring(0, countCharacter)}..."
        : value;
  }

  String? checkEndpoint(String? category) {
    switch (category) {
      case "Electronics":
        return "electronics";
      case "Men":
        return "men's clothing";
      case "Women":
        return "women's clothing";
      case "Jewelery":
        return "jewelery";
      default:
        return null;
    }
  }
}
