import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/models/contact_model.dart';
import 'package:portfolio/models/event_model.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/url.dart';
import 'package:portfolio/modules/about_module/local_widgets/about_section.dart';
import 'package:portfolio/modules/about_module/local_widgets/events_section.dart';
import 'package:portfolio/global_widgets/horizontal_dashed_divider.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  static const List<ContactModel> contacts = <ContactModel>[
    ContactModel(
      urlKey: UrlKey.email,
      iconData: LineIcons.envelope,
      detail: '1213terry@naver.com',
    ),
    ContactModel(
      urlKey: UrlKey.github,
      iconData: LineIcons.github,
      detail: 'https://github.com/terry1213',
    ),
    ContactModel(
      urlKey: UrlKey.blog,
      iconData: LineIcons.bloggerB,
      detail: 'https://terry1213.github.io/categories/',
    ),
  ];
  static const List<EventModel> educations = <EventModel>[
    EventModel(
      period: '2012.02-2015.02',
      detail: '새음 기독 대안학교',
    ),
    EventModel(
      period: '2015.02-2021.02',
      detail: '한동대학교 컴퓨터공학',
    ),
  ];
  static const List<EventModel> careers = <EventModel>[
    EventModel(
      period: '2020.12-2021.02',
      detail: 'HEM Pharma / Flutter 개발자',
    ),
    EventModel(
      period: '2021.02-2021.08',
      detail: '소프트웨어팩토리 / Flutter 개발자',
    ),
    EventModel(
      period: '2021.11-현재        ',
      detail: '자이냅스 / Flutter 개발자',
    ),
  ];
  static const List<EventModel> projects = <EventModel>[
    EventModel(
      period: '2020.07',
      detail: "음악 공유 어플 '아지트' 개발(Swift)",
    ),
    EventModel(
      period: '2020.11',
      detail: "영어 복습 어플 '오답노트' 개발(Flutter)",
    ),
    EventModel(
      period: '2021.09',
      detail: '개인 포트폴리오 사이트 개발(Flutter Web)',
    ),
  ];
  static const List<EventModel> certificates = <EventModel>[
    EventModel(
      period: '2020.05',
      detail: '토익 875점',
    ),
    EventModel(
      period: '2020.06',
      detail: '정보처리기사(필기)',
    ),
    EventModel(
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
              children: const <Widget>[
                HorizontalDashedDivider(space: 60),
                AboutSection(
                  contacts: contacts,
                ),
                HorizontalDashedDivider(space: 60),
                EventsSection(
                  title: 'Education',
                  events: educations,
                ),
                HorizontalDashedDivider(space: 60),
                EventsSection(
                  title: 'Career',
                  events: careers,
                ),
                HorizontalDashedDivider(space: 60),
                EventsSection(
                  title: 'Project',
                  events: projects,
                ),
                HorizontalDashedDivider(space: 60),
                EventsSection(
                  title: 'Certificate',
                  events: certificates,
                ),
                HorizontalDashedDivider(space: 60),
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
                      children: const <Widget>[
                        HorizontalDashedDivider(space: 80),
                        AboutSection(
                          contacts: contacts,
                        ),
                        HorizontalDashedDivider(space: 80),
                        EventsSection(
                          title: 'Education',
                          events: educations,
                        ),
                        HorizontalDashedDivider(space: 80),
                        EventsSection(
                          title: 'Career',
                          events: careers,
                        ),
                        HorizontalDashedDivider(space: 80),
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
                      children: const <Widget>[
                        HorizontalDashedDivider(
                          space: 80,
                        ),
                        EventsSection(
                          title: 'Project',
                          events: projects,
                        ),
                        HorizontalDashedDivider(
                          space: 80,
                        ),
                        EventsSection(
                          title: 'Certificate',
                          events: certificates,
                        ),
                        HorizontalDashedDivider(
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
