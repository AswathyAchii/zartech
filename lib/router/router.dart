import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zartech/screens/authentication/presentation/authentication.dart';
part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthenticationPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
