import 'package:flutter/material.dart';
import 'package:portfolio/presentation/template_page/template_page.dart';

enum Routes {
  home,
}

class _Paths {
  static const String home = '/';

  static const Map<Routes, String> _pathMap = {
    Routes.home: _Paths.home,
  };

  static String of(Routes route) => _pathMap[route] ?? home;
}

class PortfolioNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static String initialRoute = _Paths.home;

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Paths.home:
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return const TemplatePage();
          },
        );
    }
  }

  static Future? push<T>(Routes route, {T? arguments}) =>
      state?.pushNamed(_Paths.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, {T? arguments}) =>
      state?.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static void pop() => state?.pop();

  static void popUntil(Routes route) =>
      state?.popUntil(ModalRoute.withName(_Paths.of(route)));

  static NavigatorState? get state => navigatorKey.currentState;
}
