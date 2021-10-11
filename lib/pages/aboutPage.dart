import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  static const Map<String, String> _urls = {
    'Email': 'mailto:1213terry@naver.com',
    'Phone': 'sms:01047888356',
    'LinkedIn':
        'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
    'Blog': 'https://terry1213.github.io/categories/',
    'Github': 'https://github.com/terry1213',
  };
  static List<_Contact> contacts = [
    _Contact(
        urlKey: 'Phone', iconData: LineIcons.phone, detail: '010-4788-8356'),
    _Contact(
        urlKey: 'Email',
        iconData: LineIcons.envelope,
        detail: '1213terry@naver.com'),
    _Contact(
        urlKey: 'Github',
        iconData: LineIcons.github,
        detail: 'https://github.com/terry1213'),
    _Contact(
        urlKey: 'Blog',
        iconData: LineIcons.bloggerB,
        detail: 'https://terry1213.github.io/categories/'),
  ];
  static List<_Event> educations = [
    _Event(period: '2012.02-2015.02', detail: '새음 기독 대안학교'),
    _Event(period: '2015.02-2021.02', detail: '한동대학교 컴퓨터공학'),
  ];
  static List<_Event> careers = [
    _Event(period: '2020.12-2021.02', detail: 'HEM Pharma / Flutter 개발자'),
    _Event(period: '2021.02-2021.08', detail: '소프트웨어팩토리 / Flutter 개발자'),
  ];
  static List<_Event> projects = [
    _Event(period: '2020.07', detail: '음악 공유 어플 \'아지트\' 개발(Swift)'),
    _Event(period: '2020.11', detail: '영어 복습 어플 \'오답노트\' 개발(Flutter)'),
  ];
  static List<_Event> certificates = [
    _Event(period: '2020.05', detail: '토익 875점'),
    _Event(period: '2020.06', detail: '정보처리기사(필기)'),
    _Event(period: '2020.08', detail: '코더스하이 iOS 어플리케이션 캠프 최우수상'),
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
                    aboutSection(context, contacts),
                    HorizontalDashedDivider(space: 60),
                    eventsSection(context, 'Education', educations),
                    HorizontalDashedDivider(space: 60),
                    eventsSection(context, 'Career', careers),
                    HorizontalDashedDivider(space: 60),
                    eventsSection(context, 'Project', projects),
                    HorizontalDashedDivider(space: 60),
                    eventsSection(context, 'Certificate', certificates),
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
                            aboutSection(context, contacts),
                            HorizontalDashedDivider(space: 80),
                            eventsSection(context, 'Education', educations),
                            HorizontalDashedDivider(space: 80),
                            eventsSection(context, 'Career', careers),
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
                            eventsSection(context, 'Project', projects),
                            HorizontalDashedDivider(
                              space: 80,
                            ),
                            eventsSection(context, 'Certificate', certificates),
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

  Widget aboutSection(BuildContext context, List<_Contact> contacts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
            Text(
              '임연우 / Yeonwoo Lim',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
            Text('1996.12.13 / 경기도 구리시'),
            SizedBox(height: 30),
          ] +
          contacts
              .map((contact) => InkWell(
                    onTap: () => _launchURL(contact.urlKey),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Icon(contact.iconData, size: 23),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(contact.detail),
                        ),
                      ],
                    ),
                  ))
              .toList(),
    );
  }

  Widget eventsSection(
      BuildContext context, String title, List<_Event> abouts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
          ] +
          abouts
              .map((about) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(about.period),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(about.detail),
                      ),
                    ],
                  ))
              .toList(),
    );
  }

  void _launchURL(String key) async => await canLaunch(_urls[key] ?? '')
      ? await launch(_urls[key] ?? '')
      : throw 'Could not launch $_urls';
}

class _Event {
  final String period;
  final String detail;

  const _Event({
    required this.period,
    required this.detail,
  });
}

class _Contact {
  final String urlKey;
  final IconData iconData;
  final String detail;

  const _Contact({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });
}
