import 'package:e_commerce/src/core/base/functions/base_functions.dart';
import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/init/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:auto_route/auto_route.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.id,
  }) : super(key: key);

  final String imagePath;
  final String productName;
  final double productPrice;
  final int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(DetailRoute(id: id)),
      child: Container(
        height: 25.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: ColorConstants.instance.alabester,
            width: 5,
          ),
        ),
        child: Column(
          children: [
            1.h.ph,
            Image.network(
              imagePath,
              height: 10.h,
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
