import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/modules/about_module/about_page.dart';
import 'package:portfolio/modules/blog_module/blog_page.dart';
import 'package:portfolio/modules/career_module/career_page.dart';
import 'package:portfolio/modules/home_module/home_page.dart';
import 'package:portfolio/modules/project_module/project_page.dart';
import 'package:portfolio/modules/skill_module/skill_page.dart';
import 'package:portfolio/modules/template_module/local_widgets/custom_app_bar.dart';
import 'package:portfolio/modules/template_module/local_widgets/custom_drawer.dart';
import 'package:portfolio/modules/template_module/local_widgets/footer.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({Key? key}) : super(key: key);

  final List<Widget> _pages = const <Widget>[
    HomePage(),
    AboutPage(),
    SkillPage(),
    CareerPage(),
    ProjectPage(),
    BlogPage(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.brightness_6),
                  onPressed: () => EasyDynamicTheme.of(context).changeTheme(
                    dark: Theme.of(context).brightness != Brightness.dark,
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 0,
            )
          : CustomAppBar(itemScrollController),
      body: ScrollablePositionedList.builder(
        itemScrollController: itemScrollController,
        itemCount: _pages.length,
        itemBuilder: (context, index) => _pages[index],
      ),
      drawer: CustomDrawer(itemScrollController),
      drawerEdgeDragWidth: 0.0,
    );
  }
}
