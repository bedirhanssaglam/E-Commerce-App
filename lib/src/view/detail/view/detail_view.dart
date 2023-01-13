import 'package:e_commerce/src/core/base/functions/base_functions.dart';
import 'package:e_commerce/src/core/components/button/custom_button.dart';
import 'package:e_commerce/src/core/components/snackbar/snackbar_widget.dart';
import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/init/network/dio_manager.dart';
import 'package:e_commerce/src/view/home/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';
import 'package:auto_route/auto_route.dart';

import '../../../core/base/singleton/base_singleton.dart';
import '../../../core/components/animation/animationUtils/animate_in_effect.dart';
import '../viewModel/detail_view_model.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.id});

  final int id;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> with BaseSingleton {
  final DetailViewModel _detailViewModel = DetailViewModel(
    ProductService(DioManager.instance.dio),
  );

  @override
  void initState() {
    super.initState();
    _detailViewModel.fetchProductByIdService(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimateInEffect(
          keepAlive: true,
          child: Observer(
            builder: (_) {
              switch (_detailViewModel.productDetailServiceState) {
                case ProductDetailServiceState.loading:
                  return functions.platformIndicator();
                case ProductDetailServiceState.success:
                  return _buildBody(context);
                case ProductDetailServiceState.error:
                  return functions.errorText("Something went wrong!");
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildProductImage(),
        3.h.ph,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductTitle(context),
              1.h.ph,
              _buildProductRating(),
              2.h.ph,
              _buildProductPriceAndStockStatus(context),
              2.h.ph,
              _buildProductDescription(context),
              3.h.ph,
              CustomButton(
                onTap: () => snackbarWidget(
                  context,
                  message: "This feature is not yet supported.",
                  isSuccess: false,
                ),
                text: "Add to Cart",
              ),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox _buildProductImage() {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseFunctions.instance.platformBackButton(
            onPressed: () {
              context.router.pop();
            },
          ),
          Center(
            child: Image.network(
              _detailViewModel.product.image!,
              height: 30.h,
            ),
          ),
        ],
      ),
    );
  }

  Text _buildProductTitle(BuildContext context) {
    return Text(
      _detailViewModel.product.title!,
      style: context.textTheme.headline1?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildProductRating() {
    return RatingBar.builder(
      initialRating: _detailViewModel.product.rating!.rate!,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget _buildProductPriceAndStockStatus(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "€ ${_detailViewModel.product.price}",
          style: context.textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Available in stock",
          style: context.textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildProductDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: context.textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        2.h.ph,
        Text(
          _detailViewModel.product.description!,
          style: context.textTheme.subtitle1,
        ),
      ],
    );
  }
}
