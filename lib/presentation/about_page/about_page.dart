import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/component/horizontal_dashed_divider.dart';
import 'package:portfolio/config/url.dart';
import 'package:portfolio/models/contact.dart';
import 'package:portfolio/models/event.dart';
import 'package:portfolio/utils/responsive.dart';

part 'widgets/about_section.dart';
part 'widgets/events_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  final List<Contact> _contacts = const <Contact>[
    Contact(
      urlKey: UrlKey.email,
      iconData: LineIcons.envelope,
      detail: '1213terry@naver.com',
    ),
    Contact(
      urlKey: UrlKey.github,
      iconData: LineIcons.github,
      detail: 'https://github.com/terry1213',
    ),
    Contact(
      urlKey: UrlKey.blog,
      iconData: LineIcons.bloggerB,
      detail: 'https://terry1213.github.io/categories/',
    ),
  ];
  final List<Event> _educations = const <Event>[
    Event(
      period: '2012.02-2015.02',
      detail: '새음 기독 대안학교',
    ),
    Event(
      period: '2015.02-2021.02',
      detail: '한동대학교 컴퓨터공학',
    ),
  ];
  final List<Event> _careers = const <Event>[
    Event(
      period: '2020.12-2021.02',
      detail: 'HEM Pharma / Flutter 개발자',
    ),
    Event(
      period: '2021.02-2021.08',
      detail: '소프트웨어팩토리 / Flutter 개발자',
    ),
    Event(
      period: '2021.11-현재        ',
      detail: '자이냅스 / Flutter 개발자',
    ),
  ];
  final List<Event> _projects = const <Event>[
    Event(
      period: '2020.07',
      detail: "음악 공유 어플 '아지트' 개발(Swift)",
    ),
    Event(
      period: '2020.11',
      detail: "영어 복습 어플 '오답노트' 개발(Flutter)",
    ),
    Event(
      period: '2021.09',
      detail: '개인 포트폴리오 사이트 개발(Flutter Web)',
    ),
  ];
  final List<Event> _certificates = const <Event>[
    Event(
      period: '2020.05',
      detail: '토익 875점',
    ),
    Event(
      period: '2020.08',
      detail: '코더스하이 iOS 어플리케이션 캠프 최우수상',
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
            'About',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const HorizontalDashedDivider(space: 60),
                _AboutSection(
                  contacts: _contacts,
                ),
                const HorizontalDashedDivider(space: 60),
                _EventsSection(
                  title: 'Education',
                  events: _educations,
                ),
                const HorizontalDashedDivider(space: 60),
                _EventsSection(
                  title: 'Career',
                  events: _careers,
                ),
                const HorizontalDashedDivider(space: 60),
                _EventsSection(
                  title: 'Project',
                  events: _projects,
                ),
                const HorizontalDashedDivider(space: 60),
                _EventsSection(
                  title: 'Certificate',
                  events: _certificates,
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
                        _AboutSection(
                          contacts: _contacts,
                        ),
                        const HorizontalDashedDivider(space: 80),
                        _EventsSection(
                          title: 'Education',
                          events: _educations,
                        ),
                        const HorizontalDashedDivider(space: 80),
                        _EventsSection(
                          title: 'Career',
                          events: _careers,
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
                        const HorizontalDashedDivider(
                          space: 80,
                        ),
                        _EventsSection(
                          title: 'Project',
                          events: _projects,
                        ),
                        const HorizontalDashedDivider(
                          space: 80,
                        ),
                        _EventsSection(
                          title: 'Certificate',
                          events: _certificates,
                        ),
                        const HorizontalDashedDivider(
                          space: 80,
                        ),
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
  }
}
