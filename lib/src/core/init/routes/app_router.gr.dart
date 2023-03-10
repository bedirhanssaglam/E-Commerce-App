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
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
    IntroRoute.name: (routeData) {
      final args = routeData.argsAs<IntroRouteArgs>(
          orElse: () => const IntroRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: IntroView(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailView(
          key: args.key,
          id: args.id,
        ),
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
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          IntroRoute.name,
          path: '/intro',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home',
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
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [IntroView]
class IntroRoute extends PageRouteInfo<IntroRouteArgs> {
  IntroRoute({Key? key})
      : super(
          IntroRoute.name,
          path: '/intro',
          args: IntroRouteArgs(key: key),
        );

  static const String name = 'IntroRoute';
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [DetailView]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required int id,
  }) : super(
          DetailRoute.name,
          path: '/detail',
          args: DetailRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, id: $id}';
  }
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
