import 'dart:io';

import 'package:flutter/material.dart';

class BaseFunctions {
  static BaseFunctions? _instance;
  static BaseFunctions get instance {
    _instance ??= BaseFunctions._init();
    return _instance!;
  }

  BaseFunctions._init();

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

  closePopup(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
