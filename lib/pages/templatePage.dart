import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              actions: [
                IconButton(
                  icon: Icon(Icons.brightness_6),
                  onPressed: () {
                    EasyDynamicTheme.of(context).changeTheme();
                  },
                ),
              ],
              centerTitle: true,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                tooltip: 'Menu',
              ),
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
      key: _scaffoldKey,
    );
  }
}
