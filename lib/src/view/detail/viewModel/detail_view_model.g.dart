// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailViewModel on DetailViewModelBase, Store {
  late final _$productAtom =
      Atom(name: 'DetailViewModelBase.product', context: context);

  @override
  ProductModel get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(ProductModel value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$productDetailServiceStateAtom = Atom(
      name: 'DetailViewModelBase.productDetailServiceState', context: context);

  @override
  ProductDetailServiceState get productDetailServiceState {
    _$productDetailServiceStateAtom.reportRead();
    return super.productDetailServiceState;
  }

  @override
  set productDetailServiceState(ProductDetailServiceState value) {
    _$productDetailServiceStateAtom
        .reportWrite(value, super.productDetailServiceState, () {
      super.productDetailServiceState = value;
    });
  }

  late final _$fetchProductByIdServiceAsyncAction = AsyncAction(
      'DetailViewModelBase.fetchProductByIdService',
      context: context);

  @override
  Future<ProductModel> fetchProductByIdService({required int id}) {
    return _$fetchProductByIdServiceAsyncAction
        .run(() => super.fetchProductByIdService(id: id));
  }

  @override
  String toString() {
    return '''
product: ${product},
productDetailServiceState: ${productDetailServiceState}
    ''';
  }
}
