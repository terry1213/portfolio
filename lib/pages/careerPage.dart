import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

class CareerPage extends StatelessWidget {
  static TextTheme textTheme = Get.textTheme;

  static List<_Career> careers = [
    _Career(
      company: '홀잡펠 이펙티브 마이크로브스',
      period: '2020.12-2021.02',
      position: 'Flutter 개발자',
      apps: [
        _App(
          name: 'HEM 체험단',
          works: [
            _Work(
              main: '불필요한 코드 삭제 및 중복된 코드를 줄이는 최적화 작업',
              detail: [
                '어플의 상단 바(앱바)나 알림창(다이얼로그) 등이 사용될 때마다 매번 같은 설정을 사용하게 되어있었습니다. 해당 부분을 theme으로 지정하여 코드를 간소화했습니다. 이외에 중복되지만 theme으로 지정할 수 없는 부분에 대해선 별도의 클래스을 선언하고 필요할 때마다 부르는 형식으로 수정했습니다.',
                '또한 사용되지 않는 함수, 변수, 패키지들을 찾아서 삭제하는 작업을 했습니다.',
              ],
            ),
            _Work(
              main: '어플 관리자 페이지에 firebase cloud function을 사용하여 새로운 기능 추가 및 수정',
              detail: [
                '관리자 페이지는 flutter를 사용하여 웹으로 구현되어 있습니다.',
                '관리자가 엑셀 파일을 업로드했을 때 firebase cloud function을 통해 자동으로 데이터가 처리되도록 구현했습니다. 검사 키트 번호 등록이나 검사 결과 등록 등 다양한 경우에 엑셀 파일을 업로드하게 되는데 자동으로 각 경우에 맞춰 적합한 처리를 실행하게 됩니다.',
                'firebase cloud function를 통한 파일 읽기 및 데이터 처리 시에 발생할 수 있는 에러 및 다양한 알림을 적절한 로그를 통해 관리자에게 알려주는 기능을 구현했습니다.',
              ],
            ),
            _Work(
              main: '모든 외부 패키지 최신 버전으로 업데이트, Xcode12로의 migration',
              detail: [
                '2018년에 개발하기 시작한 어플리케이션이기 때문에 사용된 외부 패키지가 모두 옛날 버전이었습니다. 이전까지는 문제가 없었지만 Xcode12로 업그레이드되면서 호환되지 않는 패키지들이 발생하고 빌드가 되지 않았습니다. 이에 따라 모든 외부 패키지를 최신 버전으로 업데이트하는 작업을 진행했고 패키지 문제 해결 이후 Xcode12로의 migration 작업까지 완료했습니다.',
              ],
            ),
            _Work(
              main: 'dartdoc을 활용한 인수인계서 작성',
              detail: [
                '회사 내에 flutter 무경험 개발자들과 미래의 신규 개발자들을 위해 인수인계서를 작성했습니다. 인수인계서에는 dartdoc 패키지를 사용했고 dart에서 제공하는 문서화 가이드에 맞춰서 작성했습니다.',
              ],
            ),
          ],
          appStoreLink:
              'https://apps.apple.com/kr/app/hem-%EC%B2%B4%ED%97%98%EB%8B%A8/id1475463852',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.hemomg',
        ),
      ],
    ),
    _Career(
      company: '소프트웨어 팩토리',
      period: '2021.02-2021.08',
      position: 'Flutter 개발자',
      apps: [
        _App(
          name: 'spotale: 스팟테일',
          works: [
            _Work(
              main: '데이터를 엑셀 파일로 자동 정리하고 해당 파일을 공유하는 기능 구현',
              detail: [
                '사용자가 버튼을 클릭하면 그룹 내 방문자 기록 데이터를 기반으로 엑셀 파일 생성하고 해당 파일을 쉽게 공유할 수 있게 하는 기능을 구현했습니다.',
              ],
            ),
            _Work(
              main: 'Flutter 2.0 null safety로 마이그레이션 및 안정화 작업',
              detail: [],
            ),
          ],
          appStoreLink:
              'https://apps.apple.com/kr/app/spotale-%EC%8A%A4%ED%8C%9F%ED%85%8C%EC%9D%BC/id1505086427',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.spotale',
        ),
        _App(
          name: '함성: 함께 성경 읽기',
          works: [
            _Work(
              main: '',
              detail: [],
            ),
          ],
          appStoreLink:
              'https://apps.apple.com/kr/app/%ED%95%A8%EC%84%B1-%ED%95%A8%EA%BB%98-%EC%84%B1%EA%B2%BD-%EC%9D%BD%EA%B8%B0/id1552812826',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.church',
        ),
        _App(
          name: '3.3.7 life',
          works: [
            _Work(
              main: '',
              detail: [],
            ),
          ],
          appStoreLink: '',
          googlePlayStoreLink: '',
        ),
      ],
    ),
  ];
  static Map<String, dynamic> data = {};

  const CareerPage();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Container(
          height: 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: 1360,
              child: ListView(
                children: [
                  Text(
                    'Career',
                    style: textTheme.headline2!,
                  ),
                  SizedBox(height: 20),
                  FixedTimeline.tileBuilder(
                    theme: TimelineThemeData(
                      nodePosition: 0,
                      color: Color(0xff989898),
                      indicatorTheme: IndicatorThemeData(
                        position: 0,
                        size: 30.0,
                      ),
                      connectorTheme: ConnectorThemeData(
                        thickness: 4,
                      ),
                    ),
                    builder: TimelineTileBuilder.connected(
                      connectionDirection: ConnectionDirection.before,
                      itemCount: careers.length + 1,
                      contentsBuilder: (_, index) {
                        if (index == careers.length) return null;
                        return Padding(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    careers[index].company,
                                    style: textTheme.headline5!.copyWith(
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    careers[index].period,
                                    style: textTheme.bodyText2!.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                careers[index].position,
                                style: textTheme.bodyText2!.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  careers[index].apps.length,
                                  (index2) {
                                    return _AppSection(
                                        careers[index].apps[index2]);
                                  },
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        );
                      },
                      indicatorBuilder: (_, index) {
                        return OutlinedDotIndicator(
                          borderWidth: 4,
                        );
                      },
                      connectorBuilder: (_, index, ___) => SolidLineConnector(
                        thickness: 4,
                      ),
                    ),
                  ),
                ],
                shrinkWrap: true,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _AppSection(_App app) {
    return Padding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                app.name,
                style: textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              app.appStoreLink == ''
                  ? Container()
                  : IconButton(
                      constraints: BoxConstraints(),
                      icon: Icon(LineIcons.apple),
                      iconSize: 30,
                      onPressed: () => _launchURL(app.appStoreLink),
                      padding: EdgeInsets.zero,
                      splashRadius: 15,
                      tooltip: '앱스토어',
                    ),
              app.googlePlayStoreLink == ''
                  ? Container()
                  : IconButton(
                      constraints: BoxConstraints(),
                      icon: Icon(LineIcons.android),
                      iconSize: 30,
                      onPressed: () => _launchURL(app.googlePlayStoreLink),
                      padding: EdgeInsets.zero,
                      splashRadius: 15,
                      tooltip: '구글 플레이 스토어',
                    ),
            ],
          ),
          Padding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                app.works.length,
                (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            app.works[index].main,
                            style: textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            app.works[index].detail.length,
                            (index2) {
                              return Padding(
                                child: Text(
                                  app.works[index].detail[index2],
                                  style: textTheme.bodyText2,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 5.0),
                              );
                            },
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                      ),
                    ],
                  );
                },
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

class _Career {
  final String company;
  final String period;
  final String position;
  final List<_App> apps;

  const _Career({
    required this.company,
    required this.period,
    required this.position,
    required this.apps,
  });
}

class _App {
  final String name;
  final List<_Work> works;
  final String appStoreLink;
  final String googlePlayStoreLink;

  const _App({
    required this.name,
    required this.works,
    required this.appStoreLink,
    required this.googlePlayStoreLink,
  });
}

class _Work {
  final String main;
  final List<String> detail;

  const _Work({
    required this.main,
    required this.detail,
  });
}
