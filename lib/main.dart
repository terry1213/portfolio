import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/modules/blog_module/blog_controller.dart';
import 'package:portfolio/modules/project_module/project_controller.dart';
import 'package:portfolio/modules/template_module/template_page.dart';
import 'package:portfolio/utils/theme_data.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(EasyDynamicThemeWidget(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '임연우 Flutter Developer',
      debugShowCheckedModeBanner: false,
      darkTheme: darkThemeData,
      theme: lightThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode!,
      home: const TemplatePage(),
      initialBinding: BindingsBuilder(
        () {
          Get.put(BlogController(currentIndex: 0));
          Get.put(ProjectController(currentIndex: 0));
        },
      ),
    );
  }
}
