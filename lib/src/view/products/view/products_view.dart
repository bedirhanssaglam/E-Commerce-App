import 'package:e_commerce/src/core/components/appbar/appbar.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/init/network/dio_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/singleton/base_singleton.dart';
import '../../../core/components/cards/product_card.dart';
import '../../home/model/product_model.dart';
import '../../home/service/product_service.dart';
import '../viewModel/products_view_model.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key, required this.category});

  final String category;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> with BaseSingleton {
  final ProductsViewModel _productsViewModel = ProductsViewModel(
    ProductService(DioManager.instance.dio),
  );

  @override
  void initState() {
    super.initState();
    _productsViewModel.fetchAllProductService(
        category: functions.checkEndpoint(widget.category)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isProductView: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                3.h.ph,
                RichText(
                  text: TextSpan(
                    style: context.textTheme.headline1,
                    children: [
                      const TextSpan(
                        text: "Products are listed for the ",
                      ),
                      TextSpan(
                        text: widget.category,
                        style: context.textTheme.headline1?.copyWith(
                          color: colors.flamingo,
                        ),
                      ),
                    ],
                  ),
                ),
                3.h.ph,
                Observer(
                  builder: (_) {
                    switch (_productsViewModel.productByCategoryState) {
                      case ProductByCategoryState.loading:
                        return functions.platformIndicator();
                      case ProductByCategoryState.success:
                        List<ProductModel> _productsList =
                            _productsViewModel.products;
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                      case ProductByCategoryState.error:
                        return functions.errorText("Something went wrong!");
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
