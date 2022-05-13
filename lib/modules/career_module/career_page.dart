import 'package:flutter/material.dart';
import 'package:portfolio/models/app.dart';
import 'package:portfolio/models/career.dart';
import 'package:portfolio/modules/career_module/local_widgets/app_section.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/url.dart';
import 'package:timelines/timelines.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({Key? key}) : super(key: key);

  final List<Career> _careers = const <Career>[
    Career(
      company: 'HEM Pharma',
      period: '2020.12-2021.02',
      position: 'Flutter 개발자 (인턴)',
      apps: <App>[
        App(
          name: 'HEM 체험단',
          detail:
              '집에서 간편하게 키트를 통해 장 건강 상태를 분석하고, 자신에게 맞는 포스트 바이오 솔루션을 추천해주는 어플.',
          works: [
            '불필요한 코드 및 중복된 코드를 줄이는 최적화 작업',
            'firebase cloud function을 사용하여 어플 관리자 페이지에 새로운 기능 추가 및 수정',
            '모든 외부 패키지 최신 버전으로 업데이트, Xcode 12로의 migration',
            'dartdoc을 활용한 인수인계서 작성',
          ],
          appStoreLink: UrlKey.hemA,
          googlePlayStoreLink: UrlKey.hemG,
        ),
      ],
    ),
    Career(
      company: '소프트웨어 팩토리',
      period: '2021.02-2021.08',
      position: 'Flutter 개발자',
      apps: <App>[
        App(
          name: 'Spotale: 스팟테일',
          detail:
              '사용자들이 특정 스팟을 방문하여 QR코드를 스캔하면, 해당 스팟을 구독하여 그에 대한 최신 소식을 받아볼 수 있는'
              ' 서비스를 제공하는 어플.',
          works: [
            '데이터를 엑셀 파일로 자동 정리하고 해당 파일을 공유하는 기능 구현',
            'Flutter 2.0 null safety로 마이그레이션 작업',
            '에러 해결 및 안정화 등 유지보수',
          ],
          appStoreLink: UrlKey.spotaleA,
          googlePlayStoreLink: UrlKey.spotaleG,
        ),
        App(
          name: '3.3.7 life',
          detail:
              '네패스 회사의 사내 어플.\n회사의 공지사항, 생활 소식 등 다양한 정보를 확인할 수 있으며, 복지 서비스(ex.'
              ' 보컬 교실)를 쉽게 이용하도록 도와줍니다. 또한 사내 문화인 7감사를 관리하는 감사 노트 기능을 제공합니다.',
          works: [
            '어플 개발 시작부터 런칭까지 진행',
            '1인 개발로 어플의 모든 기능을 혼자서 개발',
            'Figma를 활용하여 디자이너와 협업',
            '잠재적 사용자인 네패스 직원 약 100명 대상으로 베타 테스트 진행',
          ],
          appStoreLink: UrlKey.life337A,
          googlePlayStoreLink: UrlKey.life337G,
        ),
        App(
          name: '함성: 함께 성경 읽기',
          detail:
              '공동체 신앙 어플로 함께 성경 읽기, 말씀 묵상, 기도 카트, 자유 나눔을 쉽게 할 수 있도록 도와주는 어플.',
          works: [
            '에러 해결 및 안정화 등 유지보수',
          ],
          appStoreLink: UrlKey.hamsungA,
          googlePlayStoreLink: UrlKey.hamsungG,
        ),
      ],
    ),
    Career(
      company: '자이냅스',
      period: '2021.11-현재',
      position: 'Flutter 개발자',
      apps: <App>[
        App(
          name: '바이블리',
          detail: 'AI 딥러닝 기술을 활용한 오디오 성경 어플',
          works: [
            '어플 개발 시작부터 런칭까지 진행',
            '프론트엔드 파트 전담',
            '오디오 서비스에 필요한 다양한 기능 구현',
          ],
          appStoreLink: UrlKey.biblelyA,
          googlePlayStoreLink: UrlKey.biblelyG,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
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
              nodePosition: ResponsiveWidget.isSmallScreen(context) ? 0.0 : 0.5,
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
              itemCount: _careers.length + 1,
              contentsBuilder: (_, int index) {
                if (index == _careers.length) return null;
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
                              _careers[index].company,
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
                              _careers[index].period,
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
                              _careers[index].company,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              _careers[index].period,
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
                        _careers[index].position,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List<AppSection>.generate(
                          _careers[index].apps.length,
                          (int index2) {
                            return AppSection(
                              app: _careers[index].apps[index2],
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
              connectorBuilder: (_, int index, ___) => const SolidLineConnector(
                thickness: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
