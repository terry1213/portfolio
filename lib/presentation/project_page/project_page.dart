import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/component/horizontal_dashed_divider.dart';
import 'package:portfolio/component/image_with_animated_opacity.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/presentation/project_page/project_page_controller.dart';
import 'package:portfolio/presentation/project_page/project_page_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/project_section.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider(
        create: (context) => ProjectPageController(),
        child: Consumer<ProjectPageController>(
          builder: (
            BuildContext context,
            ProjectPageController projectPageController,
            Widget? child,
          ) {
            if (projectPageController.projectPageState.projectPageStateStatus ==
                    ProjectPageStateStatus.initial ||
                projectPageController.projectPageState.projectPageStateStatus ==
                    ProjectPageStateStatus.loading) {
              return const SizedBox();
            }
            final List<int> carouselIndexes =
                Iterable<int>.generate(projectPageController.projects.length)
                    .toList();
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 70),
              child: Column(
                children: <Widget>[
                  Text(
                    'Project',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(height: 20),
                  Consumer<ProjectPageController>(
                    builder: (
                      BuildContext context,
                      ProjectPageController projectPageController,
                      Widget? child,
                    ) {
                      return Column(
                        children: projectPageController.projects
                            .map(
                              (Project project) => Builder(
                                builder: (BuildContext context) {
                                  return _ProjectSection(
                                    project: project,
                                  );
                                },
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
