// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../loading_page/loading_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoadingRoute.name: (routeData) => _i1.MaterialPageX<_i3.LoadingPage>(
        routeData: routeData,
        builder: (_) {
          return _i3.LoadingPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(LoadingRoute.name, path: '/')];
}

class LoadingRoute extends _i1.PageRouteInfo {
  const LoadingRoute() : super(name, path: '/');

  static const String name = 'LoadingRoute';
}
