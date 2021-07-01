import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/pages/aboutPage.dart';

import 'homePage.dart';

class TemplatePage extends StatefulWidget {
  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {

  List<CollapsibleItem> _items;
  Map<String, Widget> _detailPages = {
    'Home': HomePage(),
    'About': AboutPage(),
  };
  String _currentPage;
  AssetImage _avatarImg =
  AssetImage('assets/profile_sidebar.jpg');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _currentPage = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () => setState(() => _currentPage = 'Home'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.person,
        onPressed: () => setState(() => _currentPage = 'About'),
      ),
      CollapsibleItem(
        text: 'Career',
        icon: Icons.work,
        onPressed: () => setState(() => _currentPage = 'Career'),
      ),
      CollapsibleItem(
        text: 'Project',
        icon: LineIcons.projectDiagram,
        onPressed: () => setState(() => _currentPage = 'Project'),
      ),
      CollapsibleItem(
        text: 'Blog',
        icon: LineIcons.bloggerB,
        onPressed: () => setState(() => _currentPage = 'Blog'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CollapsibleSidebar(
        items: _items,
        avatarImg: _avatarImg,
        title: '임연우',
        body: _body(size, context),
        toggleTitle: 'Close',
        backgroundColor: Colors.black,
        selectedTextColor: Colors.white,
        unselectedTextColor: Colors.grey,
        textStyle: Theme.of(context).textTheme.headline6,
        titleStyle: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold),
        toggleTitleStyle: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return _detailPages[_currentPage];
  }
}
