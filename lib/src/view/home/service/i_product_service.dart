import 'package:dio/dio.dart';

import '../model/product_model.dart';

abstract class IProductService {
  final Dio dio;
  IProductService(this.dio);

  Future<List<ProductModel>> fetchAllProducts();
  Future<ProductModel> fetchProductById({required int id});
  Future<List<ProductModel>> fetchProductsByCategory(
      {required String category});
}
