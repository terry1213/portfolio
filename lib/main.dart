import 'package:flutter/material.dart';
import 'package:portfolio/core/controller/theme_controller.dart';
import 'package:portfolio/presentation/template_page/template_page.dart';
import 'package:portfolio/routes.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeController>(
          create: (_) => ThemeController(),
        ),
      ],
      child: Consumer<ThemeController>(
        builder: (
          BuildContext context,
          ThemeController themeController,
          Widget? child,
        ) =>
            MaterialApp(
          title: '임연우 Flutter Developer',
          debugShowCheckedModeBanner: false,
          navigatorKey: PortfolioNavigator.navigatorKey,
          initialRoute: PortfolioNavigator.initialRoute,
          onGenerateRoute: PortfolioNavigator.onGenerateRoute,
          theme: themeController.themeData,
          home: const TemplatePage(),
        ),
      ),
    );
  }
}
