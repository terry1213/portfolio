import 'package:flutter/material.dart';
import 'package:portfolio/config/app_constants.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/ui/component/horizontal_dashed_divider.dart';
import 'package:portfolio/ui/component/image_with_animated_opacity.dart';
import 'package:portfolio/ui/component/template.dart';
import 'package:portfolio/ui/view/project_view/project_view_model.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/project_section.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? (screenSize.width - AppConstants.projectAboutPaddingBase) / 2
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / AppConstants.paddingRatioMedium
            : screenSize.width / AppConstants.paddingRatioSmall;
    return Template(
      child: ChangeNotifierProvider(
        create: (context) => ProjectViewModel(),
        child: Consumer<ProjectViewModel>(
          builder: (
            BuildContext context,
            ProjectViewModel projectViewModel,
            Widget? child,
          ) {
            return projectViewModel.state.maybeWhen(
              loaded: (projects) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: AppConstants.standardVerticalSpacing),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Project',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: AppConstants.standardSectionSpacing,
                      ),
                      const SizedBox(height: AppConstants.smallVerticalSpacing),
                      Column(
                        children: projects
                            .map(
                              (Project project) => Builder(
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: AppConstants
                                            .projectSectionBottomPadding),
                                    child: _ProjectSection(
                                      project: project,
                                    ),
                                  );
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
