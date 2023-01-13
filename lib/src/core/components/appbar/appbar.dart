import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:e_commerce/src/core/init/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:auto_route/auto_route.dart';

import '../../base/singleton/base_singleton.dart';
import '../../constants/enums/icon_enums.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    this.isProductView = false,
  }) : super(key: key);

  final bool? isProductView;

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> with BaseSingleton {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.isProductView!
          ? functions.platformBackButton(
              onPressed: () => context.router.push(const HomeRoute()),
            )
          : null,
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
