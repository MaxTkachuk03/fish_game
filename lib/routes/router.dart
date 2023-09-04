import 'package:fish_game/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static MaterialPageRoute generateRoutes(RouteSettings settings) {
    // final Object? arguments = settings.arguments;

    WidgetBuilder builder;

    switch (settings.name) {
      case EnterPage.routeName:
        builder = (_) => const EnterPage();
        break;
      case MainPage.routeName:
        builder = (_) => const MainPage();
        break;
      
      default:
        throw Exception('Invalid route: ${settings.name}');
    }

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
