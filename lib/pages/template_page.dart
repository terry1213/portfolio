import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/blog_page.dart';
import 'package:portfolio/pages/career_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/pages/skill_page.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/custom_app_bar.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({Key? key}) : super(key: key);

  final List<Widget> pages = const <Widget>[
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
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
      ),
      drawer: CustomDrawer(itemScrollController),
    );
  }
}
