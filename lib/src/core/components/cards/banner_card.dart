import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    Key? key,
    required this.cardColor,
    required this.imagePath,
    required this.discountTitle,
  }) : super(key: key);

  final Color cardColor;
  final String imagePath;
  final String discountTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 65.w,
      margin: EdgeInsets.only(right: 4.w),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: Text(
              discountTitle,
              style: context.textTheme.headline1?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            imagePath.toPng,
            height: 10.h,
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
