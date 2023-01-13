import 'package:e_commerce/src/core/components/appbar/appbar.dart';
import 'package:e_commerce/src/core/constants/enums/icon_enums.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/singleton/base_singleton.dart';
import '../../../core/components/cards/banner_card.dart';
import '../../../core/components/cards/category_card.dart';
import '../../../core/components/cards/product_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseSingleton {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            4.h.ph,
            _buildHeader(context),
            2.h.ph,
            _buildScrollableBanner(),
            3.h.ph,
            Text(
              'Top Categories',
              style: context.textTheme.headline2?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            4.h.ph,
            const CategoryCard(),
            4.h.ph,
            const ProductCard(),
          ],
        ),
      ),
    );
  }

  Column _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Welcome back!",
              style: context.textTheme.headline2?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            2.w.pw,
            SvgPicture.asset(IconEnums.sayHello.iconName.toSvg)
          ],
        ),
        1.h.ph,
        Text(
          "Let's start shopping!",
          style: context.textTheme.subtitle2?.copyWith(
            color: colors.black.withOpacity(.5),
          ),
        ),
      ],
    );
  }

  SingleChildScrollView _buildScrollableBanner() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BannerCard(
              discountTitle: '20% OFF DURING\nTHE WEEKEND',
              cardColor: colors.jaffa,
              imagePath: IconEnums.banner.iconName),
          BannerCard(
              discountTitle: '30% OFF ON\nSMART WATCHES',
              cardColor: colors.azure,
              imagePath: IconEnums.bannerWatch.iconName),
        ],
      ),
    );
  }
}
