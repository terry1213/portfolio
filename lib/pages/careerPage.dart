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
      position: 'Flutter 개발자 (인턴)',
      apps: [
        _App(
          name: 'HEM 체험단',
          detail:
              '집에서 간편하게 키트를 통해 장 건강 상태를 분석하고, 자신에게 맞는 포스트 바이오 솔루션을 추천해주는 어플.',
          works: [
            _Work(
              main: '불필요한 코드 및 중복된 코드를 줄이는 최적화 작업',
              detail: [
                '어플의 상단 바(앱바)나 알림창(다이얼로그) 등을 사용할 때마다 매번 같은 설정으로 사용하고 있었습니다. 해당 부분을 theme으로 지정하여 코드를 간소화했습니다. 이외에 중복되지만 theme으로 지정할 수 없는 부분에 대해선 별도의 클래스을 선언하고 필요할 때마다 부르는 형식으로 수정했습니다.',
                '또한 사용되지 않는 함수, 변수, 패키지들을 찾아서 삭제하는 작업을 했습니다.',
              ],
            ),
            _Work(
              main: 'firebase cloud function을 사용하여 어플 관리자 페이지에 새로운 기능 추가 및 수정',
              detail: [
                '관리자가 엑셀 파일을 업로드했을 때 firebase cloud function을 통해 자동으로 데이터가 처리되도록 구현했습니다. 검사 키트 번호 등록이나 검사 결과 등록 등 다양한 목적을 위해 엑셀 파일을 업로드하게 되는데 각 경우에 맞춰 자동으로 적합한 처리가 진행됩니다.',
                'firebase cloud function를 통한 파일 읽기 및 데이터 처리 시에 발생할 수 있는 에러 및 다양한 알림을 적절한 로그를 통해 관리자에게 알려주는 기능을 구현했습니다.',
              ],
            ),
            _Work(
              main: '모든 외부 패키지 최신 버전으로 업데이트, Xcode 12로의 migration',
              detail: [
                '2018년에 개발한 어플이기 때문에 사용된 외부 패키지가 모두 옛날 버전이었습니다. 따라서 모든 외부 패키지를 최신 버전으로 업데이트하고, 지원이 끊긴 패키지는 대체 패키지를 찾아서 수정했습니다.',
                'Xcode 12로 넘어가면서 호환성, 설정 등 여러 문제가 발생했습니다. 이를 해결하고 Xcode 12로의 migration을 완료했습니다.',
              ],
            ),
            _Work(
              main: 'dartdoc을 활용한 인수인계서 작성',
              detail: [
                '회사 내에 flutter 무경험 개발자들과 나중의 신규 개발자들을 위해 인수인계서를 작성했습니다. dartdoc 패키지를 활용했고 dart에서 제공하는 공식 문서화 가이드에 맞춰서 진행했습니다.',
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
          name: 'Spotale: 스팟테일',
          detail:
              '사용자들이 특정 스팟을 방문하여 QR코드를 스캔하면, 해당 스팟을 구독하여 그에 대한 최신 소식을 받아볼 수 있는 서비스를 제공하는 어플.',
          works: [
            _Work(
              main: '데이터를 엑셀 파일로 자동 정리하고 해당 파일을 공유하는 기능 구현',
              detail: [
                '방문 기록 데이터가 자동을 정리되어 엑셀 파일로 생성되고, 해당 파일을 간편하게 공유할 수 있습니다.',
                '엑셀 파일은 방문자별, 장소별, 날짜별 등 다양한 기준으로 생성할 수 있도록 구현했습니다.',
              ],
            ),
            _Work(
              main: 'Flutter 2.0 null safety로 마이그레이션 작업',
              detail: [
                'Flutter 2.0이 발표되어 모든 외부 패키지를 최신 버전으로 업데이트했습니다. 일부 지원 자체가 끝났거나 아직 Flutter 2.0이 지원이 제공되지 않은 패키지는 대체 패키지를 찾아서 수정했습니다.',
              ],
            ),
            _Work(
              main: '에러 해결 및 안정화 등 유지보수',
              detail: [],
            ),
          ],
          appStoreLink:
              'https://apps.apple.com/kr/app/spotale-%EC%8A%A4%ED%8C%9F%ED%85%8C%EC%9D%BC/id1505086427',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.spotale',
        ),
        _App(
          name: '3.3.7 life',
          detail:
              '네패스 회사의 사내 어플.\n회사의 공지사항, 생활 소식 등 다양한 정보를 확인할 수 있으며, 복지 서비스(ex. 보컬 교실)를 쉽게 이용할 수 있도록 도와줍니다. 또한 사내 문화인 7감사의 관리를 도와주는 감사 노트 기능을 제공합니다.',
          works: [
            _Work(
              main: '어플 개발 시작부터 런칭까지 진행',
              detail: [],
            ),
            _Work(
              main: '1인 개발로 어플의 모든 기능 혼자서 개발',
              detail: [
                '1인 개발로 진행했기 때문에 어플의 모든 기능을 혼자서 구현했습니다.',
              ],
            ),
            _Work(
              main: 'Figma를 활용하여 디자이너와 협업',
              detail: [],
            ),
            _Work(
              main: '잠재적 사용자인 네패스 직원 약 100명 대상으로 베타 테스트 진행',
              detail: [],
            ),
          ],
          appStoreLink: 'https://apps.apple.com/kr/app/3-3-7-life/id1572404447',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.life337',
        ),
        _App(
          name: '함성: 함께 성경 읽기',
          detail:
              '공동체 신앙 어플로 함께 성경 읽기, 말씀 묵상, 기도 카트, 자유 나눔을 쉽게 할 수 있도록 도와주는 어플.',
          works: [
            _Work(
              main: '에러 해결 및 안정화 등 유지보수',
              detail: [],
            ),
          ],
          appStoreLink:
              'https://apps.apple.com/kr/app/%ED%95%A8%EC%84%B1-%ED%95%A8%EA%BB%98-%EC%84%B1%EA%B2%BD-%EC%9D%BD%EA%B8%B0/id1552812826',
          googlePlayStoreLink:
              'https://play.google.com/store/apps/details?id=com.swfact.church',
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
            child: Text(
              app.detail,
              style: textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
                            style: textTheme.bodyText2,
                          ),
                        ],
                      ),
                      // Padding(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: List.generate(
                      //       app.works[index].detail.length,
                      //       (index2) {
                      //         return Padding(
                      //           child: Text(
                      //             app.works[index].detail[index2],
                      //             style: textTheme.bodyText2,
                      //           ),
                      //           padding: EdgeInsets.symmetric(vertical: 5.0),
                      //         );
                      //       },
                      //     ),
                      //   ),
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 30.0, vertical: 5.0),
                      // ),
                    ],
                  );
                },
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
  final String detail;
  final List<_Work> works;
  final String appStoreLink;
  final String googlePlayStoreLink;

  const _App({
    required this.name,
    required this.detail,
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
