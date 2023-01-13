import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/enums/icon_enums.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 20.w,
      margin: EdgeInsets.only(right: 6.w),
      decoration: BoxDecoration(
        color: ColorConstants.instance.jaffa,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorConstants.instance.swissCoffee.withOpacity(.5),
          width: 2,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          IconEnums.electronics.iconName.toSvg,
        ),
      ),
    );
  }
}
