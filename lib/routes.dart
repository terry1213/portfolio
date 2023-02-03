import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about_page/about_page.dart';
import 'package:portfolio/presentation/blog_page/blog_page.dart';
import 'package:portfolio/presentation/career_page/career_page.dart';
import 'package:portfolio/presentation/home_page/home_page.dart';
import 'package:portfolio/presentation/project_page/project_page.dart';

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
              const AboutPage(),
        );
      case _Paths.blog:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const BlogPage(),
        );
      case _Paths.career:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const CareerPage(),
        );
      case _Paths.home:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const HomePage(),
        );
      case _Paths.project:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const ProjectPage(),
        );
      default:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const HomePage(),
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
