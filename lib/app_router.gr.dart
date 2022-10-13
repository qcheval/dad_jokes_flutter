// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'presentation/home/home_page_widget.dart' as _i1;
import 'presentation/random_joke/random_joke_widget.dart' as _i2;
import 'presentation/submit_joke/submit_joke_widget.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRouteWidget.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePageWidget(),
      );
    },
    RandomJokeWidget.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RandomJokeWidget(),
      );
    },
    SubmitJokeWidget.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SubmitJokeWidget(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRouteWidget.name,
          path: '/',
        ),
        _i4.RouteConfig(
          RandomJokeWidget.name,
          path: '/random-joke-widget',
        ),
        _i4.RouteConfig(
          SubmitJokeWidget.name,
          path: '/submit-joke-widget',
        ),
      ];
}

/// generated route for
/// [_i1.HomePageWidget]
class HomeRouteWidget extends _i4.PageRouteInfo<void> {
  const HomeRouteWidget()
      : super(
          HomeRouteWidget.name,
          path: '/',
        );

  static const String name = 'HomeRouteWidget';
}

/// generated route for
/// [_i2.RandomJokeWidget]
class RandomJokeWidget extends _i4.PageRouteInfo<void> {
  const RandomJokeWidget()
      : super(
          RandomJokeWidget.name,
          path: '/random-joke-widget',
        );

  static const String name = 'RandomJokeWidget';
}

/// generated route for
/// [_i3.SubmitJokeWidget]
class SubmitJokeWidget extends _i4.PageRouteInfo<void> {
  const SubmitJokeWidget()
      : super(
          SubmitJokeWidget.name,
          path: '/submit-joke-widget',
        );

  static const String name = 'SubmitJokeWidget';
}
