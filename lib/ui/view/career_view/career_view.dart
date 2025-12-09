import 'package:flutter/material.dart';
import 'package:portfolio/config/app_constants.dart';
import 'package:portfolio/ui/component/template.dart';
import 'package:portfolio/ui/view/career_view/career_view_model.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:timelines_plus/timelines_plus.dart';

class CareerView extends StatelessWidget {
  const CareerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / AppConstants.paddingRatioLarge1
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / AppConstants.paddingRatioMedium
            : screenSize.width / AppConstants.paddingRatioSmall;
    return Template(
      child: ChangeNotifierProvider<CareerViewModel>(
        create: (_) => CareerViewModel(),
        child: Consumer<CareerViewModel>(
          builder: (
            BuildContext context,
            CareerViewModel careerViewModel,
            Widget? child,
          ) {
            return careerViewModel.state.maybeWhen(
              loaded: (careers) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: AppConstants.standardVerticalSpacing),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Career',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppConstants.standardSectionSpacing),
                      FixedTimeline.tileBuilder(
                        theme: TimelineThemeData(
                          nodePosition: 0.0,
                          color: Theme.of(context).dividerColor,
                          indicatorTheme: const IndicatorThemeData(
                            position: 0,
                            size: AppConstants.timelineIndicatorSize,
                          ),
                          connectorTheme: const ConnectorThemeData(
                            thickness: AppConstants.timelineConnectorThickness,
                          ),
                        ),
                        builder: TimelineTileBuilder.connected(
                          contentsAlign: ContentsAlign.basic,
                          connectionDirection: ConnectionDirection.before,
                          itemCount: careers.length + 1,
                          contentsBuilder: (_, int index) {
                            if (index == careers.length) {
                              return null;
                            }
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  if (ResponsiveWidget.isLargeScreen(context))
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          careers[index].company,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                color: Colors.lightBlue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          careers[index].period,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
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
                                          careers[index].company,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                color: Colors.lightBlue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          careers[index].period,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  Text(
                                    careers[index].position,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    careers[index].detail,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: List<Widget>.generate(
                                        careers[index].sections.length,
                                        (int sectionIndex) {
                                          return Padding(
                                            padding:
                                                const EdgeInsets.only(bottom: 25),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                    Text(
                                                      careers[index]
                                                          .sections[sectionIndex]
                                                          .detail,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 3),
                                                      child: Text(
                                                        careers[index]
                                                            .sections[sectionIndex]
                                                            .period,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                              color: Colors.grey,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                            ),
                                                      ),
                                                    ),
                                                  ] +
                                                  List<Widget>.generate(
                                                    careers[index]
                                                        .sections[sectionIndex]
                                                        .works
                                                        .length,
                                                    (int workIndex) {
                                                      return Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .fromLTRB(15,
                                                                        15, 10, 0),
                                                                child: Icon(
                                                                  Icons.circle,
                                                                  size: 8,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  careers[index]
                                                                      .sections[
                                                                          sectionIndex]
                                                                      .works[workIndex],
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
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
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
