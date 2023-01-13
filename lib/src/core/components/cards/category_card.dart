import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';
import 'package:auto_route/auto_route.dart';

import '../../base/singleton/base_singleton.dart';
import '../../init/routes/app_router.dart';

class CategoryCard extends StatelessWidget with BaseSingleton {
  const CategoryCard({
    Key? key,
    required this.imagePath,
    required this.categoryName,
  }) : super(key: key);

  final String imagePath;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(
        ProductsRoute(
          category: categoryName,
        ),
      ),
      child: Container(
        height: 10.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: colors.emerald.withOpacity(.9),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colors.swissCoffee.withOpacity(.5),
            width: 2,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagePath.toSvg,
                color: Colors.white,
              ),
              1.h.ph,
              Text(
                categoryName,
                style: context.textTheme.subtitle1?.copyWith(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
