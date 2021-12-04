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

class TemplatePage extends StatelessWidget {
  const TemplatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GlobalKey> globalKeys = <GlobalKey>[
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

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
            Container(
              key: globalKeys[0],
            ),
            const HomePage(),
            Container(
              key: globalKeys[1],
            ),
            const AboutPage(),
            Container(
              key: globalKeys[2],
            ),
            const SkillPage(),
            Container(
              key: globalKeys[3],
            ),
            const CareerPage(),
            Container(
              key: globalKeys[4],
            ),
            const ProjectPage(),
            Container(
              key: globalKeys[5],
            ),
            const BlogPage(),
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
