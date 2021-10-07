import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class AboutPage extends StatelessWidget {
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
                    AboutSection(context),
                    HorizontalDashedDivider(space: 60),
                    EducationSection(context),
                    HorizontalDashedDivider(space: 60),
                    CareerSection(context),
                    HorizontalDashedDivider(space: 60),
                    ProjectSection(context),
                    HorizontalDashedDivider(space: 60),
                    CertificateSection(context),
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
                            AboutSection(context),
                            HorizontalDashedDivider(space: 80),
                            EducationSection(context),
                            HorizontalDashedDivider(space: 80),
                            CareerSection(context),
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
                            ProjectSection(context),
                            HorizontalDashedDivider(
                              space: 80,
                            ),
                            CertificateSection(context),
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

  // Widget PhotoSection(BuildContext context) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       ClipOval(
  //         child: Image.asset(
  //           'assets/profile2.jpg',
  //           height: 200,
  //           width: 200,
  //         ),
  //       ),
  //       SizedBox(width: 20),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Row(
  //             children: [
  //               Container(
  //                 alignment: Alignment.center,
  //                 width: 60,
  //                 child: AnimatedTextKit(
  //                   animatedTexts: [
  //                     WavyAnimatedText(
  //                       '기록',
  //                       textStyle: Theme.of(context)
  //                           .textTheme
  //                           .headline3!
  //                           .copyWith(color: Colors.lightBlue),
  //                       speed: Duration(milliseconds: 600),
  //                     ),
  //                     WavyAnimatedText(
  //                       '성장',
  //                       textStyle: Theme.of(context)
  //                           .textTheme
  //                           .headline3!
  //                           .copyWith(color: Colors.lightBlue),
  //                       speed: Duration(milliseconds: 600),
  //                     ),
  //                   ],
  //                   repeatForever: true,
  //                   pause: Duration(milliseconds: 3000),
  //                 ),
  //               ),
  //               Text('하는', style: Theme.of(context).textTheme.headline3),
  //             ],
  //           ),
  //           RichText(
  //             text: TextSpan(
  //               text: '개발자\n',
  //               style: Theme.of(context).textTheme.headline3,
  //               children: [
  //                 TextSpan(
  //                   text: '임연우',
  //                   style: Theme.of(context)
  //                       .textTheme
  //                       .headline2!
  //                       .copyWith(color: Colors.lightBlue),
  //                 ),
  //                 TextSpan(text: '입니다.'),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Widget AboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '임연우 / Yeonwoo Lim',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        Text('1996.12.13 / 경기도 구리시'),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(LineIcons.phone, size: 23),
            ),
            SizedBox(width: 5),
            Flexible(
              child: Text('010-4788-8356'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(LineIcons.envelope, size: 23),
            ),
            SizedBox(width: 5),
            Flexible(
              child: Text('1213terry@naver.com'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(LineIcons.github, size: 23),
            ),
            SizedBox(width: 5),
            Flexible(
              child: Text('https://github.com/terry1213'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(LineIcons.bloggerB, size: 23),
            ),
            SizedBox(width: 5),
            Flexible(
              child: Text('https://terry1213.github.io/categories/'),
            ),
          ],
        ),
      ],
    );
  }

  Widget EducationSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Education',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2012.02-2015.02'),
            SizedBox(width: 10),
            Flexible(
              child: Text('새음 기독 대안학교'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2015.02-2021.02'),
            SizedBox(width: 10),
            Flexible(
              child: Text('한동대학교 컴퓨터공학'),
            ),
          ],
        ),
      ],
    );
  }

  Widget CareerSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Career',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.12-2021.02'),
            SizedBox(width: 10),
            Flexible(
              child: Text('HEM Pharma / Flutter 개발자'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2021.02-2021.08'),
            SizedBox(width: 10),
            Flexible(
              child: Text('소프트웨어팩토리 / Flutter 개발자'),
            )
          ],
        ),
      ],
    );
  }

  Widget ProjectSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Project',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.07'),
            SizedBox(width: 10),
            Flexible(
              child: Text('음악 공유 어플 \'아지트\' 개발(Swift)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.11'),
            SizedBox(width: 10),
            Flexible(
              child: Text('영어 복습 어플 \'오답노트\' 개발(Flutter)'),
            )
          ],
        ),
      ],
    );
  }

  Widget CertificateSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Certificate',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.05'),
            SizedBox(width: 10),
            Flexible(
              child: Text('토익 875점'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.06'),
            SizedBox(width: 10),
            Flexible(
              child: Text('정보처리기사(필기)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.08'),
            SizedBox(width: 10),
            Flexible(
              child: Text('코더스하이 iOS 어플리케이션 캠프 최우수상'),
            )
          ],
        ),
      ],
    );
  }
}
