// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    DetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DetailView(),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ProductsView(
          key: args.key,
          category: args.category,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          DetailRoute.name,
          path: '/detail',
        ),
        RouteConfig(
          ProductsRoute.name,
          path: '/products',
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [DetailView]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [ProductsView]
class ProductsRoute extends PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    Key? key,
    required String category,
  }) : super(
          ProductsRoute.name,
          path: '/products',
          args: ProductsRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'ProductsRoute';
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final String category;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, category: $category}';
  }
}
