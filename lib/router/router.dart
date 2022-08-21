import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:zartech/screens/authentication/presentation/authentication.dart';
import 'package:zartech/screens/authentication/presentation/mobile_authentication.dart';
import 'package:zartech/screens/cart/cart.dart';
import 'package:zartech/screens/home/presentation/home.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthenticationPage, initial: true),
    AutoRoute(page: MobileVerificationPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: CartPage),
  ],
)
class AppRouter extends _$AppRouter {}
