import 'dart:math' as math;
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/pages/aboutPage.dart';
import 'package:portfolio/pages/blogPage.dart';
import 'package:portfolio/pages/careerPage.dart';
import 'package:portfolio/pages/projectPage.dart';
import 'package:portfolio/pages/skillPage.dart';

import 'homePage.dart';

class TemplatePage extends StatefulWidget {
  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  final PageController _pageController = PageController();
  final AssetImage _avatarImg = AssetImage('assets/profile_sidebar.jpg');
  int _currentPageIndex = 0;
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
    List<CollapsibleItem> _items = [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () => _pageController.animateToPage(0,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 0 ? true : false,
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.person,
        onPressed: () => _pageController.animateToPage(1,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 1 ? true : false,
      ),
      CollapsibleItem(
        text: 'Skill',
        icon: Icons.bar_chart_rounded,
        onPressed: () => _pageController.animateToPage(2,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 2 ? true : false,
      ),
      CollapsibleItem(
        text: 'Career',
        icon: Icons.work,
        onPressed: () => _pageController.animateToPage(3,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 3 ? true : false,
      ),
      CollapsibleItem(
        text: 'Project',
        icon: LineIcons.projectDiagram,
        onPressed: () => _pageController.animateToPage(4,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 4 ? true : false,
      ),
      CollapsibleItem(
        text: 'Blog',
        icon: LineIcons.bloggerB,
        onPressed: () => _pageController.animateToPage(5,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 5 ? true : false,
      ),
    ];
    return Scaffold(
      body: CollapsibleSidebar(
        items: _items,
        avatarImg: _avatarImg,
        title: '임연우',
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          children: pages,
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
        ),
        toggleTitle: 'Close',
        backgroundColor: Colors.black,
        selectedTextColor: Colors.white,
        selectedIconColor: Colors.white,
        selectedIconBox: Colors.transparent,
        unselectedTextColor: Colors.grey,
        unselectedIconColor: Colors.grey,
        iconSize: 30,
        minWidth: 70,
        maxWidth: 200,
        screenPadding: 0,
        borderRadius: 0,
        textStyle: textTheme.headline6,
        titleStyle: textTheme.headline6!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
        toggleTitleStyle: textTheme.headline6,
      ),
    );
  }
}
