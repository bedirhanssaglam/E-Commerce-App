import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/enums/icon_enums.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        IconEnums.appBar.iconName.toPng,
        height: 11.h,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Image.asset(
            IconEnums.profile.iconName.toPng,
            height: 5.h,
            width: 10.w,
          ),
        ),
      ],
    );
  }
}
