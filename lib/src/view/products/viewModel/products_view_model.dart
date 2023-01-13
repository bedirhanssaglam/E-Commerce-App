import 'package:mobx/mobx.dart';

import '../../home/model/product_model.dart';
import '../../home/service/i_product_service.dart';

part 'products_view_model.g.dart';

enum ProductByCategoryState { loading, error, success, normal }

class ProductsViewModel = ProductsViewModelBase with _$ProductsViewModel;

abstract class ProductsViewModelBase with Store {
  final IProductService productService;

  ProductsViewModelBase(this.productService);

  @observable
  List<ProductModel> products = [];

  @observable
  ProductByCategoryState productByCategoryState = ProductByCategoryState.normal;

  @action
  Future<List<ProductModel>> fetchAllProductService(
      {required String category}) async {
    productByCategoryState = ProductByCategoryState.loading;
    try {
      if (products.isNotEmpty) return products;
      final response = await productService.fetchProductsByCategory(
        category: category,
      );
      products = response;
      productByCategoryState = ProductByCategoryState.success;
      return response;
    } catch (_) {
      productByCategoryState = ProductByCategoryState.error;
      return [];
    }
  }
}
