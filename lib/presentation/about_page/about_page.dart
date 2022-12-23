import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/component/horizontal_dashed_divider.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/presentation/about_page/about_page_controller.dart';
import 'package:portfolio/presentation/about_page/about_page_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'widgets/about_section.dart';
part 'widgets/events_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider<AboutPageController>(
        create: (_) => AboutPageController(),
        child: Consumer<AboutPageController>(
          builder: (
            BuildContext context,
            AboutPageController aboutPageController,
            Widget? child,
          ) {
            if (aboutPageController.aboutPageState.aboutPageStateStatus ==
                    AboutPageStateStatus.loading ||
                aboutPageController.aboutPageState.aboutPageStateStatus ==
                    AboutPageStateStatus.initial) {
              return const SizedBox();
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 70),
              child: Column(
                children: <Widget>[
                  Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  if (ResponsiveWidget.isSmallScreen(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const HorizontalDashedDivider(space: 60),
                        _AboutSection(),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Education',
                          events: aboutPageController.educations,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Career',
                          events: aboutPageController.careers,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Project',
                          events: aboutPageController.projects,
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _EventsSection(
                          title: 'Certificate',
                          events: aboutPageController.certificates,
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
                                _AboutSection(),
                                const HorizontalDashedDivider(space: 80),
                                _EventsSection(
                                  title: 'Education',
                                  events: aboutPageController.educations,
                                ),
                                const HorizontalDashedDivider(space: 80),
                                _EventsSection(
                                  title: 'Career',
                                  events: aboutPageController.careers,
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
                                  events: aboutPageController.projects,
                                ),
                                const HorizontalDashedDivider(
                                  space: 80,
                                ),
                                _EventsSection(
                                  title: 'Certificate',
                                  events: aboutPageController.certificates,
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
            );
          },
        ),
      ),
    );
  }
}
