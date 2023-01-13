import 'dart:io';

import 'package:e_commerce/src/core/extensions/network_extensions.dart';
import 'package:e_commerce/src/view/home/model/product_model.dart';

import '../../../core/constants/enums/network_enums.dart';
import 'i_product_service.dart';

class ProductService extends IProductService {
  ProductService(super.dio);

  @override
  Future<List<ProductModel>> fetchAllProducts() async {
    final response = await dio.get(
      NetworkEnums.products.key,
    );
    if (response.statusCode == HttpStatus.ok) {
      var data = response.data as List;
      List<ProductModel> productList =
          data.map((item) => ProductModel.fromJson(item)).toList();
      return productList;
    }
    return [];
  }

  @override
  Future<ProductModel> fetchProductById({required int id}) async {
    final response = await dio.get(
      '${NetworkEnums.products.key}/$id',
    );
    if (response.statusCode == HttpStatus.ok) {
      var data = response.data;
      ProductModel product = ProductModel.fromJson(data);
      return product;
    }
    return throw Exception("Something went wrong!");
  }

  @override
  Future<List<ProductModel>> fetchProductsByCategory(
      {required String category}) async {
    final response = await dio.get(
      '${NetworkEnums.category.key}/$category',
    );
    if (response.statusCode == HttpStatus.ok) {
      var data = response.data as List;
      List<ProductModel> productListByCategory =
          data.map((item) => ProductModel.fromJson(item)).toList();
      return productListByCategory;
    }
    return [];
  }
}
