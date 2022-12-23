import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/component/horizontal_dashed_divider.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/skill/domain/entity/skill.dart';
import 'package:portfolio/presentation/skill_page/skill_page_controller.dart';
import 'package:portfolio/presentation/skill_page/skill_page_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/skill_section.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  static const List<String> skillsOfChart = <String>[
    'Flutter',
    'Firebase',
    'Swift',
    'JavaScript',
    'Docker',
    'HTML/CSS',
    'C/C++',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    final double chartHeight = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width * 2 / 7
        : (ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width * 2 / (7 - ((1200 - screenSize.width) / 400))
            : 800 * 2 / 6);
    final double chartWidth = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width * 4 / 7
        : (ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width * 4 / (7 - ((1200 - screenSize.width) / 400))
            : 800 * 4 / 6);
    return Template(
      child: ChangeNotifierProvider<SkillPageController>(
        create: (_) => SkillPageController(),
        child: Consumer<SkillPageController>(
          builder: (
            BuildContext context,
            SkillPageController skillPageController,
            Widget? child,
          ) {
            if (skillPageController.skillPageState.skillPageStateStatus ==
                    SkillPageStateStatus.initial ||
                skillPageController.skillPageState.skillPageStateStatus ==
                    SkillPageStateStatus.loading) {
              return const SizedBox();
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 70),
              child: Column(
                children: <Widget>[
                  Text(
                    'Skill',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: chartHeight,
                          width: chartWidth,
                          child: BarChart(
                            BarChartData(
                              maxY: 100,
                              barTouchData: BarTouchData(
                                touchTooltipData: BarTouchTooltipData(
                                  tooltipBgColor: Colors.transparent,
                                  getTooltipItem: (
                                    BarChartGroupData group,
                                    int groupIndex,
                                    BarChartRodData rod,
                                    int rodIndex,
                                  ) {
                                    return BarTooltipItem(
                                      rod.toY.toString(),
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    );
                                  },
                                ),
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 30,
                                    getTitlesWidget: (double value, _) => Text(
                                      skillsOfChart[value.toInt()],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .iconTheme
                                                .color,
                                          ),
                                    ),
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 30,
                                    getTitlesWidget: (double value, _) {
                                      if (value == 0 ||
                                          value == 50 ||
                                          value == 100) {
                                        return Text(
                                          value.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                color: Theme.of(context)
                                                    .iconTheme
                                                    .color,
                                              ),
                                        );
                                      } else {
                                        return const Text('');
                                      }
                                    },
                                  ),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              barGroups: <BarChartGroupData>[
                                makeGroupData(0, 80, context),
                                makeGroupData(1, 75, context),
                                makeGroupData(2, 30, context),
                                makeGroupData(3, 55, context),
                                makeGroupData(4, 45, context),
                                makeGroupData(5, 45, context),
                                makeGroupData(6, 50, context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  if (ResponsiveWidget.isSmallScreen(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const HorizontalDashedDivider(space: 60),
                        _SkillSection(
                          skill: skillPageController.skills[0],
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _SkillSection(
                          skill: skillPageController.skills[1],
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _SkillSection(
                          skill: skillPageController.skills[2],
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _SkillSection(
                          skill: skillPageController.skills[3],
                        ),
                        const HorizontalDashedDivider(space: 60),
                        _SkillSection(
                          skill: skillPageController.skills[4],
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
                                _SkillSection(
                                  skill: skillPageController.skills[0],
                                ),
                                const HorizontalDashedDivider(space: 80),
                                _SkillSection(
                                  skill: skillPageController.skills[1],
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
                                const HorizontalDashedDivider(space: 80),
                                _SkillSection(
                                  skill: skillPageController.skills[2],
                                ),
                                const HorizontalDashedDivider(space: 80),
                                _SkillSection(
                                  skill: skillPageController.skills[3],
                                ),
                                const HorizontalDashedDivider(space: 80),
                                _SkillSection(
                                  skill: skillPageController.skills[4],
                                ),
                                const HorizontalDashedDivider(space: 80),
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

  static BarChartGroupData makeGroupData(
    int x,
    double y,
    BuildContext context,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: <BarChartRodData>[
        BarChartRodData(
          toY: y,
          color: Theme.of(context).dividerColor,
          width: 30,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ],
    );
  }
}
