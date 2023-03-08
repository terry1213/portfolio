import 'package:flutter/material.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/ui/component/horizontal_dashed_divider.dart';
import 'package:portfolio/ui/component/image_with_animated_opacity.dart';
import 'package:portfolio/ui/component/template.dart';
import 'package:portfolio/ui/view/project_view/project_view_model.dart';
import 'package:portfolio/ui/view/project_view/project_view_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/project_section.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? (screenSize.width - 1000) / 2
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider(
        create: (context) => ProjectViewModel(),
        child: Consumer<ProjectViewModel>(
          builder: (
            BuildContext context,
            ProjectViewModel projectViewModel,
            Widget? child,
          ) {
            if (projectViewModel.projectViewState.projectViewStateStatus ==
                    ProjectViewStateStatus.initial ||
                projectViewModel.projectViewState.projectViewStateStatus ==
                    ProjectViewStateStatus.loading) {
              return const SizedBox();
            }
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
                  Consumer<ProjectViewModel>(
                    builder: (
                      BuildContext context,
                      ProjectViewModel projectViewModel,
                      Widget? child,
                    ) {
                      return Column(
                        children: projectViewModel.projects
                            .map(
                              (Project project) => Builder(
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: _ProjectSection(
                                      project: project,
                                    ),
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
