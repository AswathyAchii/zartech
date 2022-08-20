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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AuthenticationRoute.name, path: '/'),
        RouteConfig(MobileVerificationRoute.name,
            path: '/mobile-verification-page')
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
