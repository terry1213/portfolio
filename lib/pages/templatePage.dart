import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      appBar: PreferredSize(
        child: Center(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                TextButton(
                  child: Text('Home'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(0,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
                TextButton(
                  child: Text('About'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(1,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
                TextButton(
                  child: Text('Skill'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(2,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
                TextButton(
                  child: Text('Career'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(3,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
                TextButton(
                  child: Text('Project'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(4,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
                TextButton(
                  child: Text('Blog'),
                  style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size.fromWidth(80)),),
                  onPressed: () => _pageController.animateToPage(5,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut),
                ),
              ],
            ),
            color: Color(0xFFF242424),
            width: 1360,
          ),
        ),
        preferredSize: Size.fromHeight(90),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        children: pages,
      ),
    );
  }
}
