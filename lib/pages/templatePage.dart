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
import 'package:portfolio/widgets/footer.dart';

import 'homePage.dart';

class TemplatePage extends StatelessWidget {
  final List<GlobalKey> globalKeys = [
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
              actions: [
                IconButton(
                  icon: Icon(Icons.brightness_6),
                  onPressed: () => EasyDynamicTheme.of(context).changeTheme(
                      dark: Theme.of(context).brightness != Brightness.dark),
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
          children: [
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
            Footer(),
          ],
        ),
      ),
      drawer: CustomDrawer(
        globalKeys: globalKeys,
      ),
    );
  }
}
