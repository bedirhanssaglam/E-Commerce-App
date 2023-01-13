// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductsViewModel on ProductsViewModelBase, Store {
  late final _$productsAtom =
      Atom(name: 'ProductsViewModelBase.products', context: context);

  @override
  List<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$productByCategoryStateAtom = Atom(
      name: 'ProductsViewModelBase.productByCategoryState', context: context);

  @override
  ProductByCategoryState get productByCategoryState {
    _$productByCategoryStateAtom.reportRead();
    return super.productByCategoryState;
  }

  @override
  set productByCategoryState(ProductByCategoryState value) {
    _$productByCategoryStateAtom
        .reportWrite(value, super.productByCategoryState, () {
      super.productByCategoryState = value;
    });
  }

  late final _$fetchAllProductServiceAsyncAction = AsyncAction(
      'ProductsViewModelBase.fetchAllProductService',
      context: context);

  @override
  Future<List<ProductModel>> fetchAllProductService(
      {required String category}) {
    return _$fetchAllProductServiceAsyncAction
        .run(() => super.fetchAllProductService(category: category));
  }

  @override
  String toString() {
    return '''
products: ${products},
productByCategoryState: ${productByCategoryState}
    ''';
  }
}
