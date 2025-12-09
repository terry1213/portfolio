import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/config/app_constants.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/ui/component/horizontal_dashed_divider.dart';
import 'package:portfolio/ui/component/template.dart';
import 'package:portfolio/ui/view/about_view/about_view_model.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'widgets/about_section.dart';
part 'widgets/events_section.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? (screenSize.width - AppConstants.projectAboutPaddingBase) / 2
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / AppConstants.paddingRatioMedium
            : screenSize.width / AppConstants.paddingRatioSmall;
    return Template(
      child: ChangeNotifierProvider<AboutViewModel>(
        create: (_) => AboutViewModel(),
        child: Consumer<AboutViewModel>(
          builder: (
            BuildContext context,
            AboutViewModel aboutViewModel,
            Widget? child,
          ) {
            return aboutViewModel.state.maybeWhen(
              loaded: (_) => Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: AppConstants.standardVerticalSpacing),
              child: Column(
                children: <Widget>[
                  Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: AppConstants.standardSectionSpacing,
                  ),
                  if (ResponsiveWidget.isSmallScreen(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const HorizontalDashedDivider(space: 60),
                        const _AboutSection(),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Education',
                          events: aboutViewModel.educations,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Career',
                          events: aboutViewModel.careers,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Project',
                          events: aboutViewModel.projects,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Certificate',
                          events: aboutViewModel.certificates,
                        ),
                        const HorizontalDashedDivider(space: 60),
                      ],
                    )
                  else
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const VerticalDivider(),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const HorizontalDashedDivider(space: 80),
                                const _AboutSection(),
                                const HorizontalDashedDivider(space: 80),
                                _EventsSection(
                                  title: 'Education',
                                  events: aboutViewModel.educations,
                                ),
                                const HorizontalDashedDivider(space: 80),
                                _EventsSection(
                                  title: 'Career',
                                  events: aboutViewModel.careers,
                                ),
                                const HorizontalDashedDivider(space: 80),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const VerticalDivider(),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const HorizontalDashedDivider(
                                  space: 80,
                                ),
                                _EventsSection(
                                  title: 'Project',
                                  events: aboutViewModel.projects,
                                ),
                                const HorizontalDashedDivider(
                                  space: 80,
                                ),
                                _EventsSection(
                                  title: 'Certificate',
                                  events: aboutViewModel.certificates,
                                ),
                                const HorizontalDashedDivider(
                                  space: 80,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const VerticalDivider(),
                        ],
                      ),
                    ),
                ],
              ),
            ),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
