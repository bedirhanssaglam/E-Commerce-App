import 'package:e_commerce/src/core/base/functions/base_functions.dart';
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
import '../../../core/components/cards/banner_card.dart';
import '../../../core/components/cards/category_card.dart';
import '../../../core/components/cards/product_card.dart';
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
              3.h.ph,
              SizedBox(
                height: 10.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const CategoryCard();
                  },
                ),
              ),
              4.h.ph,
              _buildProductList(),
            ],
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

  Observer _buildProductList() {
    return Observer(
      builder: (_) {
        switch (_homeViewModel.productServiceState) {
          case ProductServiceState.loading:
            return functions.platformIndicator();
          case ProductServiceState.success:
            List<ProductModel> _productsList = _homeViewModel.products;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.w,
                mainAxisSpacing: 2.h,
              ),
              itemCount: _productsList.length,
              itemBuilder: (context, index) => ProductCard(
                imagePath: _productsList[index].image!,
                productName: _productsList[index].title!,
                productPrice: _productsList[index].price!,
                onTap: () {},
              ),
            );
          case ProductServiceState.error:
            return functions.errorText("Something went wrong!");
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
