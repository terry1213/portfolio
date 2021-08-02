import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class SkillPage extends StatefulWidget {
  final ScrollController _scrollController;

  SkillPage(this._scrollController);

  @override
  SkillPageState createState() => SkillPageState();
}

class SkillPageState extends State<SkillPage> {
  final Color barColor = Color(0xff53fdd7);
  final Color highlightColor = Colors.yellowAccent;
  final double width = 20;
  final List<String> skills = [
    'Flutter',
    'Firebase',
    'Swift',
    'JavaScript',
    'Docker',
    'HTML/CSS',
    'C/C++',
  ];

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 80);
    final barGroup2 = makeGroupData(1, 75);
    final barGroup3 = makeGroupData(2, 30);
    final barGroup4 = makeGroupData(3, 55);
    final barGroup5 = makeGroupData(4, 45);
    final barGroup6 = makeGroupData(5, 45);
    final barGroup7 = makeGroupData(6, 50);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        controller: widget._scrollController,
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1361 ? size.width - 80 : 1361,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Skills',
                                  style: Theme.of(context).textTheme.headline2!,
                                ),
                                Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: EdgeInsets.all(20),
                                    child: AspectRatio(
                                      aspectRatio: 2.6,
                                      child: BarChart(
                                        BarChartData(
                                          maxY: 100,
                                          barTouchData: BarTouchData(
                                            touchTooltipData:
                                                BarTouchTooltipData(
                                              tooltipBgColor: Colors.grey,
                                              getTooltipItem: (group,
                                                  groupIndex, rod, rodIndex) {
                                                String skill =
                                                    skills[group.x.toInt()];
                                                return BarTooltipItem(
                                                  skill + '\n',
                                                  Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: (rod.y - 3)
                                                          .toString(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2!
                                                          .copyWith(
                                                              color:
                                                                  Colors.yellow,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                            touchCallback: (response) {
                                              if (response.spot == null) {
                                                setState(() {
                                                  touchedGroupIndex = -1;
                                                  showingBarGroups =
                                                      List.of(rawBarGroups);
                                                });
                                                return;
                                              }

                                              touchedGroupIndex = response
                                                  .spot!.touchedBarGroupIndex;

                                              setState(
                                                () {
                                                  if (response.touchInput
                                                          is PointerExitEvent ||
                                                      response.touchInput
                                                          is PointerUpEvent) {
                                                    touchedGroupIndex = -1;
                                                    showingBarGroups =
                                                        List.of(rawBarGroups);
                                                  } else {
                                                    showingBarGroups =
                                                        List.of(rawBarGroups);
                                                    if (touchedGroupIndex !=
                                                        -1) {
                                                      showingBarGroups[
                                                              touchedGroupIndex] =
                                                          showingBarGroups[
                                                                  touchedGroupIndex]
                                                              .copyWith(
                                                        barRods: showingBarGroups[
                                                                touchedGroupIndex]
                                                            .barRods
                                                            .map((rod) {
                                                          return rod.copyWith(
                                                              y: rod.y + 3,
                                                              colors: [
                                                                highlightColor
                                                              ]);
                                                        }).toList(),
                                                      );
                                                    }
                                                  }
                                                },
                                              );
                                            },
                                          ),
                                          titlesData: FlTitlesData(
                                            show: true,
                                            bottomTitles: SideTitles(
                                              showTitles: true,
                                              getTextStyles: (value) =>
                                                  Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!,
                                              margin: 20,
                                              getTitles: (double value) =>
                                                  skills[value.toInt()],
                                            ),
                                            leftTitles: SideTitles(
                                              showTitles: true,
                                              getTextStyles: (value) =>
                                                  Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!,
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
                                          barGroups: showingBarGroups,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          HorizontalDashedDivider(space: 40),
                          Expanded(
                            flex: 41,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'JavaScript',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Colors.lightBlue,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '캡스톤 디자인으로 \'코딩 자동 채점 웹 서비스\'와 토이 프로젝트로 \'잃어버린 물건을 찾아주는 웹 서비스\'를 '
                                        '개발한 경험이 있습니다.\nJavaScript의 문법과 사용 방법들을 알고 있으며, jquery를 통한 클라이언트 사이드 '
                                        '구현을 해봤고, ajax를 통해 서버와 통신해본 경험이 있습니다.',
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDashedDivider(space: 40),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Github',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Colors.lightBlue,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '경험한 모든 프로젝트에서 Github을 통해 소스 코드 관리 및 협업을 진행했습니다. '
                                        '또한 개인 블로그와 포트폴리오 사이트 또한 Github을 통해 관리하고 있습니다.',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDashedDivider(space: 40),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flutter',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '3개의 어플(HEM 체험단, Spotale: 스팟테일, BLOC)에 대하여 유지 보수 및 기능 추가 작업들을 경험했습니다. '
                                  '또한 Nepes 회사의 사내 어플(3.3.7. life) 개발을 전부 혼자서 진행했습니다.\n이런 경험 덕분에 '
                                  'Getx, Provider, Bloc를 통한 상태 관리를 모두 할 수 있으며, 최근 출시한 Flutter 버전 2.0에 대한 이해도 마쳤습니다. '
                                  '또한 빠르게 변화하고 Flutter에 대처하기 위해서, 공식 문서와 공식 유튜브 채널을 통해 꾸준히 공부하고 있습니다.',
                                ),
                              ],
                            ),
                          ),
                          HorizontalDashedDivider(space: 40),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Firebase',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '모든 어플리케이션 개발에서 Firebase를 사용했습니다. 따라서 Firebase의 Authentication, '
                                  'Cloud Firestore, Cloud Storage, Cloud Messaging을 능숙하고 자유롭게 사용할 수 있습니다. '
                                  '또한 보다 복잡한 Cloud Function, Dynamic Links의 경우에는 상대적으로 적게 사용해봤습니다. '
                                  '이 부분들에 대해선 기본적인 기능을 어려움 없이 다룰 수 있는 정도의 수준입니다.',
                                ),
                              ],
                            ),
                          ),
                          HorizontalDashedDivider(space: 40),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Swift',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '코더스하이 iOS 개발자 캠프 과정(40일)을 수료했습니다. 또한 캠프에서 토이 프로젝트로 음악 공유 어플리케이션 '
                                  '\'아지트\'를 개발했고, 아이디어와 완성도를 인정 받아 최우수상을 수상했습니다.\nView와 ViewController를 '
                                  '통한 화면 전환 및 제어를 할 수 있으며, Storyboard를 활용할 수 있습니다. 또한 Youtube, '
                                  '소셜 로그인(Naver, Kakao, Google) 등의 외부 API를 사용해봤습니다.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: y,
        colors: [barColor],
        width: width,
      ),
    ]);
  }
}
