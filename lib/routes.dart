import 'package:flutter/material.dart';
import 'package:portfolio/view/about_view/about_view.dart';
import 'package:portfolio/view/blog_view/blog_view.dart';
import 'package:portfolio/view/career_view/career_view.dart';
import 'package:portfolio/view/home_view/home_view.dart';
import 'package:portfolio/view/project_view/project_view.dart';

enum Routes {
  about,
  blog,
  career,
  home,
  project,
}

class _Paths {
  static const String about = '/about';
  static const String blog = '/blog';
  static const String career = '/career';
  static const String home = '';
  static const String project = '/project';

  static const Map<Routes, String> _pathMap = {
    Routes.about: _Paths.about,
    Routes.blog: _Paths.blog,
    Routes.career: _Paths.career,
    Routes.home: _Paths.home,
    Routes.project: _Paths.project,
  };

  static String of(Routes route) => _pathMap[route] ?? home;
}

class PortfolioNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static String initialRoute = _Paths.home;

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Paths.about:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const AboutView(),
        );
      case _Paths.blog:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const BlogView(),
        );
      case _Paths.career:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const CareerView(),
        );
      case _Paths.home:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const HomeView(),
        );
      case _Paths.project:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const ProjectView(),
        );
      default:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const HomeView(),
        );
    }
  }

  static bool compareWithCurrentRoute(BuildContext context,
          {required Routes route}) =>
      ModalRoute.of(context)?.settings.name == _Paths._pathMap[route];

  static Future? push<T>(Routes route, {T? arguments}) =>
      state?.pushNamed(_Paths.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, {T? arguments}) =>
      state?.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static void pop() => state?.pop();

  static void popUntil(Routes route) =>
      state?.popUntil(ModalRoute.withName(_Paths.of(route)));

  static NavigatorState? get state => navigatorKey.currentState;
}
