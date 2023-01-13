import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 43.w,
      decoration: BoxDecoration(
        color: ColorConstants.instance.alabester,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          2.h.ph,
          Image.network(
            "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            height: 11.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                  style: context.textTheme.subtitle1,
                ),
                1.h.ph,
                Text(
                  "€ 109.95",
                  style: context.textTheme.subtitle1?.copyWith(
                    color: ColorConstants.instance.black.withOpacity(.75),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
