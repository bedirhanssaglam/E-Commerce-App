import 'package:mobx/mobx.dart';

import '../model/product_model.dart';
import '../service/i_product_service.dart';

part 'home_view_model.g.dart';

enum ProductServiceState { loading, error, success, normal }

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  final IProductService productService;

  HomeViewModelBase(this.productService);

  @observable
  List<ProductModel> products = [];

  @observable
  ProductServiceState productServiceState = ProductServiceState.normal;

  @action
  Future<List<ProductModel>> fetchAllProductService() async {
    productServiceState = ProductServiceState.loading;
    try {
      if (products.isNotEmpty) return products;
      final response = await productService.fetchAllProducts();
      products = response;
      productServiceState = ProductServiceState.success;
      return response;
    } catch (_) {
      productServiceState = ProductServiceState.error;
      return [];
    }
  }
}
