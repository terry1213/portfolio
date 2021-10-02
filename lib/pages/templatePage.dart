import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/aboutPage.dart';
import 'package:portfolio/pages/blogPage.dart';
import 'package:portfolio/pages/careerPage.dart';
import 'package:portfolio/pages/projectPage.dart';
import 'package:portfolio/pages/skillPage.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/customAppBar.dart';
import 'package:portfolio/widgets/customDrawer.dart';

import 'homePage.dart';

class TemplatePage extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<Widget> pages = const <Widget>[
    HomePage(),
    AboutPage(),
    SkillPage(),
    CareerPage(),
    ProjectPage(),
    BlogPage(),
  ];
  static TextTheme textTheme = Get.textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              actions: [],
              centerTitle: true,
              elevation: 0,
            )
          : CustomAppBar(
              pageController: _pageController,
            ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        children: pages,
      ),
      drawer: CustomDrawer(
        pageController: _pageController,
      ),
    );
  }
}
