import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class SkillPage extends StatelessWidget {
  static const List<String> skillsOfChart = [
    'Flutter',
    'Firebase',
    'Swift',
    'JavaScript',
    'Docker',
    'HTML/CSS',
    'C/C++',
  ];
  static Map<String, _Skill> skills = {
    'JavaScript': _Skill(
      name: 'JavaScript',
      detail: '캡스톤 디자인으로 \'코딩 자동 채점 웹 서비스\'와 토이 프로젝트로 \'잃어버린 물건을 찾아주는 웹 서비스\'를 '
          '개발한 경험이 있습니다.\nJavaScript의 문법과 사용 방법들을 알고 있으며, jquery를 통한 클라이언트 사이드 '
          '구현을 해봤고, ajax를 통해 서버와 통신해본 경험이 있습니다.',
    ),
    'Github': _Skill(
      name: 'Github',
      detail: '경험한 모든 프로젝트에서 Github을 통해 소스 코드 관리 및 협업을 진행했습니다. '
          '또한 개인 블로그와 포트폴리오 사이트 또한 Github을 통해 관리하고 있습니다.',
    ),
    'Flutter': _Skill(
      name: 'Flutter',
      detail:
          '3개의 어플(HEM 체험단, Spotale: 스팟테일, 함성: 함께 성경 읽기)에 대하여 유지 보수 및 기능 추가 작업들을 경험했습니다. '
          '또한 네페스 회사의 사내 어플(3.3.7 life)을 시작부터 런칭까지 혼자서 개발했습니다.\n'
          'Getx, Provider, Bloc를 통한 상태 관리에 능숙하며, Flutter 2.0에 대한 이해도 마쳤습니다. '
          '또한 빠르게 변화하는 Flutter에 대처하기 위해, 공식 문서와 공식 유튜브를 통해 꾸준히 공부하고 있습니다.',
    ),
    'Firebase': _Skill(
      name: 'Firebase',
      detail: '모든 어플리케이션 개발에서 Firebase를 사용했습니다. 따라서 Firebase의 Authentication, '
          'Cloud Firestore, Cloud Storage, Cloud Messaging을 능숙하고 자유롭게 사용할 수 있습니다. '
          '또한 보다 복잡한 Cloud Function, Dynamic Links의 경우에는 상대적으로 적게 사용해봤습니다. '
          '이 부분들에 대해선 기본적인 기능을 어려움 없이 다룰 수 있는 정도의 수준입니다.',
    ),
    'Swift': _Skill(
      name: 'Swift',
      detail: '코더스하이 iOS 개발자 캠프 과정(40일)을 수료했습니다. 또한 캠프에서 토이 프로젝트로 음악 공유 어플리케이션 '
          '\'아지트\'를 개발했고, 아이디어와 완성도를 인정 받아 최우수상을 수상했습니다.\nView와 ViewController를 '
          '통한 화면 전환 및 제어를 할 수 있으며, Storyboard를 활용할 수 있습니다. 또한 Youtube, '
          '소셜 로그인(Naver, Kakao, Google) 등의 외부 API를 사용해봤습니다.',
    ),
  };

  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    double chartHeight = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width * 2 / 7
        : (ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width * 2 / (7 - ((1200 - screenSize.width) / 400))
            : 800 * 2 / 6);
    double chartWidth = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width * 4 / 7
        : (ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width * 4 / (7 - ((1200 - screenSize.width) / 400))
            : 800 * 4 / 6);
    double containerHeight = ResponsiveWidget.isMediumScreen(context)
        ? (1300 + (800 - screenSize.width) / 2 > 850
            ? 1300 + (800 - screenSize.width) / 2
            : 850)
        : (1110 + (1200 - screenSize.width) / 5 > 970
            ? 1110 + (1200 - screenSize.width) / 5
            : 970);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
      child: Column(
        children: [
          Text(
            'Skill',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: chartHeight,
                  width: chartWidth,
                  child: BarChart(
                    BarChartData(
                      maxY: 100,
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          tooltipBgColor: Colors.transparent,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              (rod.y - 3).toString(),
                              Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Theme.of(context).iconTheme.color),
                          margin: 20,
                          getTitles: (double value) =>
                              skillsOfChart[value.toInt()],
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Theme.of(context).iconTheme.color),
                          margin: 32,
                          reservedSize: 14,
                          getTitles: (value) {
                            if (value == 0) {
                              return '0';
                            } else if (value == 50) {
                              return '50';
                            } else if (value == 100) {
                              return '100';
                            } else {
                              return '';
                            }
                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: [
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
          SizedBox(height: 50),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HorizontalDashedDivider(space: 60),
                    skillSection(context, skills['Flutter']!),
                    HorizontalDashedDivider(space: 60),
                    skillSection(context, skills['Firebase']!),
                    HorizontalDashedDivider(space: 60),
                    skillSection(context, skills['Swift']!),
                    HorizontalDashedDivider(space: 60),
                    skillSection(context, skills['JavaScript']!),
                    HorizontalDashedDivider(space: 60),
                    skillSection(context, skills['Github']!),
                    HorizontalDashedDivider(space: 60),
                  ],
                )
              : Container(
                  height: containerHeight,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      VerticalDashedDivider(),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HorizontalDashedDivider(space: 80),
                            skillSection(context, skills['Flutter']!),
                            HorizontalDashedDivider(space: 80),
                            skillSection(context, skills['Firebase']!),
                            HorizontalDashedDivider(space: 80),
                          ],
                        ),
                      ),
                      VerticalDashedDivider(space: 60),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HorizontalDashedDivider(space: 80),
                            skillSection(context, skills['Swift']!),
                            HorizontalDashedDivider(space: 80),
                            skillSection(context, skills['JavaScript']!),
                            HorizontalDashedDivider(space: 80),
                            skillSection(context, skills['Github']!),
                            HorizontalDashedDivider(space: 80),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      VerticalDashedDivider(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  static BarChartGroupData makeGroupData(
      int x, double y, BuildContext context) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: y,
        colors: [Theme.of(context).dividerColor],
        width: 30,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ]);
  }

  skillSection(BuildContext context, _Skill skill) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          skill.name,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Text(skill.detail),
      ],
    );
  }
}

class _Skill {
  final String name;
  final String detail;

  const _Skill({
    required this.name,
    required this.detail,
  });
}
