import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about_page/about_page.dart';
import 'package:portfolio/presentation/blog_page/blog_page.dart';
import 'package:portfolio/presentation/career_page/career_page.dart';
import 'package:portfolio/presentation/home_page/home_page.dart';
import 'package:portfolio/presentation/project_page/project_page.dart';
import 'package:portfolio/presentation/skill_page/skill_page.dart';
import 'package:portfolio/ui/component/horizontal_dashed_divider.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'widgets/custom_app_bar.dart';
part 'widgets/custom_drawer.dart';
part 'widgets/footer.dart';

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
                  onPressed: () {
                    print('다크 모드 변경');
                  },
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
