import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/career/domain/entity/app.dart';
import 'package:portfolio/presentation/career_view/career_view_model.dart';
import 'package:portfolio/presentation/career_view/career_view_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';

part 'widgets/app_section.dart';

class CareerView extends StatelessWidget {
  const CareerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 4
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider<CareerViewModel>(
        create: (_) => CareerViewModel(),
        child: Consumer(
          builder: (
            BuildContext context,
            CareerViewModel careerViewModel,
            Widget? child,
          ) {
            if (careerViewModel.careerViewState.careerViewStateStatus ==
                    CareerViewStateStatus.initial ||
                careerViewModel.careerViewState.careerViewStateStatus ==
                    CareerViewStateStatus.loading) {
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
                      nodePosition: 0.0,
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
                      contentsAlign: ContentsAlign.basic,
                      connectionDirection: ConnectionDirection.before,
                      itemCount: careerViewModel.careers.length + 1,
                      contentsBuilder: (_, int index) {
                        if (index == careerViewModel.careers.length) {
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
                                      careerViewModel.careers[index].company,
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
                                      careerViewModel.careers[index].period,
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
                                      careerViewModel.careers[index].company,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      careerViewModel.careers[index].period,
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
                                careerViewModel.careers[index].position,
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
                                  careerViewModel.careers[index].apps.length,
                                  (int index2) {
                                    return AppSection(
                                      app: careerViewModel
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
