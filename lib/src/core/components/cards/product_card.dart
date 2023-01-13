import 'package:e_commerce/src/core/base/functions/base_functions.dart';
import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  }) : super(key: key);

  final String imagePath;
  final String productName;
  final double productPrice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 25.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: ColorConstants.instance.alabester,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            2.h.ph,
            Image.network(
              imagePath,
              height: 11.h,
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    BaseFunctions.instance.toShortString(
                      productName,
                    ),
                    style: context.textTheme.subtitle1,
                  ),
                  1.h.ph,
                  Text(
                    "€ $productPrice",
                    style: context.textTheme.subtitle1?.copyWith(
                      color: ColorConstants.instance.black.withOpacity(.75),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
