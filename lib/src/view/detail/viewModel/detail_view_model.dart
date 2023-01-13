import 'package:mobx/mobx.dart';

import '../../home/model/product_model.dart';
import '../../home/service/i_product_service.dart';

part 'detail_view_model.g.dart';

enum ProductDetailServiceState { loading, error, success, normal }

class DetailViewModel = DetailViewModelBase with _$DetailViewModel;

abstract class DetailViewModelBase with Store {
  final IProductService productService;

  DetailViewModelBase(this.productService);

  @observable
  ProductModel product = const ProductModel();

  @observable
  ProductDetailServiceState productDetailServiceState =
      ProductDetailServiceState.normal;

  @action
  Future<ProductModel> fetchProductByIdService({required int id}) async {
    productDetailServiceState = ProductDetailServiceState.loading;
    try {
      final response = await productService.fetchProductById(id: id);
      product = response;
      productDetailServiceState = ProductDetailServiceState.success;
      return response;
    } catch (_) {
      productDetailServiceState = ProductDetailServiceState.error;
      return throw Exception("Something went wrong!");
    }
  }
}
