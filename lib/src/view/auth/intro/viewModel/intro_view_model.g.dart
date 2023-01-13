// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntroViewModel on IntroViewModelBase, Store {
  late final _$pageAtom =
      Atom(name: 'IntroViewModelBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$IntroViewModelBaseActionController =
      ActionController(name: 'IntroViewModelBase', context: context);

  @override
  void pageStatus(int value) {
    final _$actionInfo = _$IntroViewModelBaseActionController.startAction(
        name: 'IntroViewModelBase.pageStatus');
    try {
      return super.pageStatus(value);
    } finally {
      _$IntroViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page}
    ''';
  }
}
