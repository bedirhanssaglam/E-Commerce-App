// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$productsAtom =
      Atom(name: 'HomeViewModelBase.products', context: context);

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

  late final _$productServiceStateAtom =
      Atom(name: 'HomeViewModelBase.productServiceState', context: context);

  @override
  ProductServiceState get productServiceState {
    _$productServiceStateAtom.reportRead();
    return super.productServiceState;
  }

  @override
  set productServiceState(ProductServiceState value) {
    _$productServiceStateAtom.reportWrite(value, super.productServiceState, () {
      super.productServiceState = value;
    });
  }

  late final _$fetchAllProductServiceAsyncAction =
      AsyncAction('HomeViewModelBase.fetchAllProductService', context: context);

  @override
  Future<List<ProductModel>> fetchAllProductService() {
    return _$fetchAllProductServiceAsyncAction
        .run(() => super.fetchAllProductService());
  }

  @override
  String toString() {
    return '''
products: ${products},
productServiceState: ${productServiceState}
    ''';
  }
}
