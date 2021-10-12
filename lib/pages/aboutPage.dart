import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/models/contactModel.dart';
import 'package:portfolio/models/eventModel.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/url.dart';
import 'package:portfolio/widgets/aboutSection.dart';
import 'package:portfolio/widgets/eventsSection.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class AboutPage extends StatelessWidget {
  static List<ContactModel> contacts = [
    ContactModel(
        urlKey: UrlKey.PHONE,
        iconData: LineIcons.phone,
        detail: '010-4788-8356'),
    ContactModel(
        urlKey: UrlKey.EMAIL,
        iconData: LineIcons.envelope,
        detail: '1213terry@naver.com'),
    ContactModel(
        urlKey: UrlKey.GITHUB,
        iconData: LineIcons.github,
        detail: 'https://github.com/terry1213'),
    ContactModel(
        urlKey: UrlKey.BLOG,
        iconData: LineIcons.bloggerB,
        detail: 'https://terry1213.github.io/categories/'),
  ];
  static List<EventModel> educations = [
    EventModel(period: '2012.02-2015.02', detail: '새음 기독 대안학교'),
    EventModel(period: '2015.02-2021.02', detail: '한동대학교 컴퓨터공학'),
  ];
  static List<EventModel> careers = [
    EventModel(period: '2020.12-2021.02', detail: 'HEM Pharma / Flutter 개발자'),
    EventModel(period: '2021.02-2021.08', detail: '소프트웨어팩토리 / Flutter 개발자'),
  ];
  static List<EventModel> projects = [
    EventModel(period: '2020.07', detail: '음악 공유 어플 \'아지트\' 개발(Swift)'),
    EventModel(period: '2020.11', detail: '영어 복습 어플 \'오답노트\' 개발(Flutter)'),
  ];
  static List<EventModel> certificates = [
    EventModel(period: '2020.05', detail: '토익 875점'),
    EventModel(period: '2020.06', detail: '정보처리기사(필기)'),
    EventModel(period: '2020.08', detail: '코더스하이 iOS 어플리케이션 캠프 최우수상'),
  ];

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double containerHeight = 1010 + (800 - screenSize.width) / 3 > 820
        ? 1010 + (800 - screenSize.width) / 3
        : 820;
    double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
      child: Column(
        children: [
          Text(
            'About',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                      VerticalDashedDivider(space: 60),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
}
