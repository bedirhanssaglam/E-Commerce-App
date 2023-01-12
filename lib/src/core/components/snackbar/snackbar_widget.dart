import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/app/color_constants.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackbarWidget(
    BuildContext context,
    {required String message,
    int milliseconds = 350,
    String? label,
    bool? isSuccess = true,
    Color textColor = Colors.white,
    double? fontSize = 16}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: fontSize!.sp,
          fontWeight: FontWeight.w600,
          color: textColor),
    ),
    behavior: SnackBarBehavior.floating,
    duration: Duration(milliseconds: milliseconds),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
    ),
    backgroundColor: isSuccess!
        ? ColorConstants.instance.emerald
        : ColorConstants.instance.carnation,
  ));
}
