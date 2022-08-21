// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthenticationPage());
    },
    MobileVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<MobileVerificationRouteArgs>(
          orElse: () => const MobileVerificationRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: MobileVerificationPage(key: args.key));
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    CartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CartPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AuthenticationRoute.name, path: '/'),
        RouteConfig(MobileVerificationRoute.name,
            path: '/mobile-verification-page'),
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(CartRoute.name, path: '/cart-page')
      ];
}

/// generated route for
/// [AuthenticationPage]
class AuthenticationRoute extends PageRouteInfo<void> {
  const AuthenticationRoute() : super(AuthenticationRoute.name, path: '/');

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [MobileVerificationPage]
class MobileVerificationRoute
    extends PageRouteInfo<MobileVerificationRouteArgs> {
  MobileVerificationRoute({Key? key})
      : super(MobileVerificationRoute.name,
            path: '/mobile-verification-page',
            args: MobileVerificationRouteArgs(key: key));

  static const String name = 'MobileVerificationRoute';
}

class MobileVerificationRouteArgs {
  const MobileVerificationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MobileVerificationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart-page');

  static const String name = 'CartRoute';
}
