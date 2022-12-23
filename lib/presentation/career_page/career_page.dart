import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/career/domain/entity/app.dart';
import 'package:portfolio/presentation/career_page/career_page_controller.dart';
import 'package:portfolio/presentation/career_page/career_page_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';

part 'widgets/app_section.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider<CareerPageController>(
        create: (_) => CareerPageController(),
        child: Consumer(
          builder: (
            BuildContext context,
            CareerPageController careerPageController,
            Widget? child,
          ) {
            if (careerPageController.careerPageState.careerPageStateStatus ==
                    CareerPageStateStatus.initial ||
                careerPageController.careerPageState.careerPageStateStatus ==
                    CareerPageStateStatus.loading) {
              return const SizedBox();
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 70),
              child: Column(
                children: <Widget>[
                  Text(
                    'Career',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  FixedTimeline.tileBuilder(
                    theme: TimelineThemeData(
                      nodePosition:
                          ResponsiveWidget.isSmallScreen(context) ? 0.0 : 0.5,
                      color: Theme.of(context).dividerColor,
                      indicatorTheme: const IndicatorThemeData(
                        position: 0,
                        size: 30.0,
                      ),
                      connectorTheme: const ConnectorThemeData(
                        thickness: 4,
                      ),
                    ),
                    builder: TimelineTileBuilder.connected(
                      contentsAlign: ResponsiveWidget.isSmallScreen(context)
                          ? ContentsAlign.basic
                          : ContentsAlign.alternating,
                      connectionDirection: ConnectionDirection.before,
                      itemCount: careerPageController.careers.length + 1,
                      contentsBuilder: (_, int index) {
                        if (index == careerPageController.careers.length) {
                          return null;
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              if (ResponsiveWidget.isLargeScreen(context))
                                Row(
                                  children: <Widget>[
                                    Text(
                                      careerPageController
                                          .careers[index].company,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      careerPageController
                                          .careers[index].period,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                )
                              else
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      careerPageController
                                          .careers[index].company,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      careerPageController
                                          .careers[index].period,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              Text(
                                careerPageController.careers[index].position,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List<AppSection>.generate(
                                  careerPageController
                                      .careers[index].apps.length,
                                  (int index2) {
                                    return AppSection(
                                      app: careerPageController
                                          .careers[index].apps[index2],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      indicatorBuilder: (_, int index) {
                        return const OutlinedDotIndicator(
                          borderWidth: 4,
                        );
                      },
                      connectorBuilder: (_, int index, ___) =>
                          const SolidLineConnector(
                        thickness: 4,
                      ),
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
