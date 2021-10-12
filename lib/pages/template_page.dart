import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/blog_page.dart';
import 'package:portfolio/pages/career_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/pages/skill_page.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/custom_app_bar.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/footer.dart';

import 'home_page.dart';

class TemplatePage extends StatelessWidget {
  final List<GlobalKey> globalKeys = <GlobalKey>[
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  Widget build(BuildContext context) {
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
          : CustomAppBar(
              globalKeys: globalKeys,
            ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HomePage(
              key: globalKeys[0],
            ),
            AboutPage(
              key: globalKeys[1],
            ),
            SkillPage(
              key: globalKeys[2],
            ),
            CareerPage(
              key: globalKeys[3],
            ),
            ProjectPage(
              key: globalKeys[4],
            ),
            BlogPage(
              key: globalKeys[5],
            ),
            const Footer(),
          ],
        ),
      ),
      drawer: CustomDrawer(
        globalKeys: globalKeys,
      ),
    );
  }
}
