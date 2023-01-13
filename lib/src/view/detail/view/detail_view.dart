import 'package:e_commerce/src/core/base/functions/base_functions.dart';
import 'package:e_commerce/src/core/components/button/custom_button.dart';
import 'package:e_commerce/src/core/components/snackbar/snackbar_widget.dart';
import 'package:e_commerce/src/core/constants/app/color_constants.dart';
import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kartal/kartal.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildProductImage(),
            3.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProductTitle(context),
                  2.h.ph,
                  _buildProductRating(),
                  2.h.ph,
                  _buildProductPriceAndStockStatus(context),
                  3.h.ph,
                  _buildProductDescription(context),
                  5.h.ph,
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
        ),
      ),
    );
  }

  Container _buildProductImage() {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.instance.seashell,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseFunctions.instance.platformBackButton(
            onPressed: () {},
          ),
          Center(
            child: Image.network(
              "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
              height: 30.h,
            ),
          ),
        ],
      ),
    );
  }

  Text _buildProductTitle(BuildContext context) {
    return Text(
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      style: context.textTheme.headline1?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  RatingBar _buildProductRating() {
    return RatingBar.builder(
      initialRating: 3.5,
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

  Row _buildProductPriceAndStockStatus(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "€ 109.95",
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

  Column _buildProductDescription(BuildContext context) {
    return Column(
      children: [
        Text(
          "Description",
          style: context.textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        2.h.ph,
        Text(
          "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
          style: context.textTheme.subtitle1,
        ),
      ],
    );
  }
}
