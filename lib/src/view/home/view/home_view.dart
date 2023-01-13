import 'package:e_commerce/src/core/components/animation/animationUtils/animated_text.dart';
import 'package:e_commerce/src/core/components/appbar/appbar.dart';
import 'package:e_commerce/src/core/constants/enums/icon_enums.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:e_commerce/src/core/init/network/dio_manager.dart';
import 'package:e_commerce/src/view/home/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/singleton/base_singleton.dart';
import '../../../core/components/animation/animationUtils/animated_scroll_view_item.dart';
import '../../../core/components/animation/animationUtils/animate_in_effect.dart';
import '../../../core/components/animation/animationUtils/fade_in_effect.dart';
import '../../../core/components/cards/banner_card.dart';
import '../../../core/components/cards/category_card.dart';
import '../../../core/components/productList/product_list.dart';
import '../model/product_model.dart';
import '../viewModel/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseSingleton {
  final HomeViewModel _homeViewModel =
      HomeViewModel(ProductService(DioManager.instance.dio));

  @override
  void initState() {
    super.initState();
    _homeViewModel.fetchAllProductService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: AnimateInEffect(
            keepAlive: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                4.h.ph,
                _buildHeader(context),
                2.h.ph,
                _buildScrollableBanner(),
                3.h.ph,
                FadeInEffect(
                  child: Text(
                    'Top Categories',
                    style: context.textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                3.h.ph,
                SizedBox(
                  height: 10.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    cacheExtent: 0,
                    itemCount: constants.categoryImages.length,
                    itemBuilder: (context, index) {
                      return AnimatedScrollViewItem(
                        child: Padding(
                          padding: EdgeInsets.only(right: 6.w),
                          child: CategoryCard(
                            imagePath: constants.categoryImages[index],
                            categoryName: constants.categoryNames[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                4.h.ph,
                _buildProductList(),
                4.h.ph,
              ],
            ),
          ),
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
            AnimatedText(
              "Welcome back!",
              textStyle: context.textTheme.headline2?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            2.w.pw,
            SvgPicture.asset(IconEnums.sayHello.iconName.toSvg)
          ],
        ),
        1.h.ph,
        AnimatedText(
          "Let's start shopping!",
          textStyle: context.textTheme.subtitle2?.copyWith(
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

  Observer _buildProductList() {
    return Observer(
      builder: (_) {
        switch (_homeViewModel.productServiceState) {
          case ProductServiceState.loading:
            return functions.platformIndicator();
          case ProductServiceState.success:
            List<ProductModel> _productsList = _homeViewModel.products;
            return ProductList(productsList: _productsList);
          case ProductServiceState.error:
            return functions.errorText("Something went wrong!");
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
