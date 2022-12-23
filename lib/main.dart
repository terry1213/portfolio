import 'package:flutter/material.dart';
import 'package:portfolio/core/controller/theme_controller.dart';
import 'package:portfolio/core/shared_preferences.dart';
import 'package:portfolio/presentation/home_page/home_page.dart';
import 'package:portfolio/routes.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  await SharedPreferencesManager().init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeController>(
          create: (_) => ThemeController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '임연우 Flutter Developer',
      debugShowCheckedModeBanner: false,
      navigatorKey: PortfolioNavigator.navigatorKey,
      initialRoute: PortfolioNavigator.initialRoute,
      onGenerateRoute: PortfolioNavigator.onGenerateRoute,
      theme: context.watch<ThemeController>().themeData,
      home: const HomePage(),
    );
  }
}
