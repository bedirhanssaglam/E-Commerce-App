import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../view/detail/view/detail_view.dart';
import '../../../view/home/view/home_view.dart';
import '../../../view/products/view/products_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen|View,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: HomeView, initial: true),
    AutoRoute(path: "/detail", page: DetailView),
    AutoRoute(path: "/products", page: ProductsView),
  ],
)
class AppRouter extends _$AppRouter {}
