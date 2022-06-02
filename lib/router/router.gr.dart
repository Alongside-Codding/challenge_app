// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../presentation/galery/galery.dart' as _i3;
import '../presentation/home/home_page.dart' as _i1;
import '../presentation/osm_page/osm_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    OsmRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OsmPage());
    },
    GaleryRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GaleryPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(OsmRoute.name, path: '/osm-page'),
        _i4.RouteConfig(GaleryRoute.name, path: '/galery-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.OsmPage]
class OsmRoute extends _i4.PageRouteInfo<void> {
  const OsmRoute() : super(OsmRoute.name, path: '/osm-page');

  static const String name = 'OsmRoute';
}

/// generated route for
/// [_i3.GaleryPage]
class GaleryRoute extends _i4.PageRouteInfo<void> {
  const GaleryRoute() : super(GaleryRoute.name, path: '/galery-page');

  static const String name = 'GaleryRoute';
}
