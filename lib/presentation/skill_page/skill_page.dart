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

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
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
}
