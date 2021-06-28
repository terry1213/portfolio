import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatefulWidget {
  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {

  List<CollapsibleItem> _items;
  Map<String, Widget> _detailPages;
  String currentPage;
  AssetImage _avatarImg =
  AssetImage('assets/profile_sidebar.jpg');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    currentPage = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () => setState(() => currentPage = 'Home'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.person,
        onPressed: () => setState(() => currentPage = 'About'),
      ),
      CollapsibleItem(
        text: 'Career',
        icon: Icons.work,
        onPressed: () => setState(() => currentPage = 'Career'),
      ),
      CollapsibleItem(
        text: 'Project',
        icon: Icons.developer_board,
        onPressed: () => setState(() => currentPage = 'Project'),
      ),
      CollapsibleItem(
        text: 'Blog',
        icon: Icons.article,
        onPressed: () => setState(() => currentPage = 'Blog'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CollapsibleSidebar(
          items: _items,
          avatarImg: _avatarImg,
          title: '임연우',
          body: _body(size, context),
          toggleTitle: 'Close',
          backgroundColor: Colors.black,
          selectedTextColor: Colors.limeAccent,
          textStyle: Theme.of(context).textTheme.headline6,
          titleStyle: Theme.of(context).textTheme.headline6,
          toggleTitleStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Center(
      child: Text(
        currentPage,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
