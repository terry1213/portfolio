import 'dart:math' as math;
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/pages/aboutPage.dart';

import 'homePage.dart';

class TemplatePage extends StatefulWidget {
  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  final PageController _pageController = PageController();
  final AssetImage _avatarImg = AssetImage('assets/profile_sidebar.jpg');
  int _currentPageIndex = 0;

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
        text: 'Career',
        icon: Icons.work,
        onPressed: () => _pageController.animateToPage(2,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 2 ? true : false,
      ),
      CollapsibleItem(
        text: 'Project',
        icon: LineIcons.projectDiagram,
        onPressed: () => _pageController.animateToPage(3,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 3 ? true : false,
      ),
      CollapsibleItem(
        text: 'Blog',
        icon: LineIcons.bloggerB,
        onPressed: () => _pageController.animateToPage(4,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut),
        isSelected: _currentPageIndex == 4 ? true : false,
      ),
    ];
    return Scaffold(
      body: CollapsibleSidebar(
        items: _items,
        avatarImg: _avatarImg,
        title: '임연우',
        body: Listener(
          onPointerSignal: (ps) {
            if (ps is PointerScrollEvent) {
              final newOffset = _pageController.offset + ps.scrollDelta.dy;
              if (ps.scrollDelta.dy.isNegative) {
                _pageController.jumpTo(math.max(0, newOffset));
              } else {
                _pageController.jumpTo(math.min(
                    _pageController.position.maxScrollExtent, newOffset));
              }
            }
          },
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomePage(),
              AboutPage(),
            ],
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
          ),
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
        textStyle: Theme.of(context).textTheme.headline6,
        titleStyle: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
        toggleTitleStyle: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
