import 'package:e_commerce/src/core/init/network/dio_manager.dart';
import 'package:e_commerce/src/view/home/service/i_product_service.dart';
import 'package:e_commerce/src/view/home/service/product_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late IProductService productService;

  setUp(() {
    productService = ProductService(DioManager.instance.dio);
  });

  test('Fetch All Products Test', () async {
    var response = await productService.fetchAllProducts();
    print(response.first.title);
    expect(
      response.first.title,
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
    );
  });

  test('Fetch Product By ID Test', () async {
    var response = await productService.fetchProductById(id: 1);
    print(response);
    expect(response, isNotNull);
  });

  test('Fetch Product By Category Test', () async {
    var response =
        await productService.fetchProductsByCategory(category: "jewelery");
    print(response);
    expect(response, isNotNull);
  });
}
