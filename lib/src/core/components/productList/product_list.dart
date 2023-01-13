import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../view/home/model/product_model.dart';
import '../cards/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required List<ProductModel> productsList,
  })  : _productsList = productsList,
        super(key: key);

  final List<ProductModel> _productsList;

  @override
  Widget build(BuildContext context) {
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
        id: _productsList[index].id!,
      ),
    );
  }
}
