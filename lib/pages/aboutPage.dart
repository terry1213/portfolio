import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class AboutPage extends StatelessWidget {
  static TextTheme textTheme = Get.textTheme;

  const AboutPage();

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
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: PhotoSection(),
                  ),
                  VerticalDashedDivider(indent: 30, endIndent: 30, space: 60),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Expanded(
                          flex: 20,
                          child: AboutSection(),
                        ),
                        HorizontalDashedDivider(space: 40),
                        Expanded(
                          flex: 10,
                          child: EducationSection(),
                        ),
                        HorizontalDashedDivider(space: 40),
                        Expanded(
                          flex: 15,
                          child: CareerSection(),
                        ),
                        HorizontalDashedDivider(space: 40),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  VerticalDashedDivider(indent: 30, endIndent: 30, space: 60),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Expanded(
                          flex: 11,
                          child: ProjectSection(),
                        ),
                        HorizontalDashedDivider(space: 40),
                        Expanded(
                          flex: 12,
                          child: CertificateSection(),
                        ),
                        HorizontalDashedDivider(space: 40),
                        Expanded(
                          flex: 19,
                          child: Container(),
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
    );
  }

  Widget PhotoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: textTheme.headline2!,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/profile2.jpg',
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            '기록',
                            textStyle: textTheme.headline3!
                                .copyWith(color: Colors.lightBlue),
                            speed: Duration(milliseconds: 600),
                          ),
                          WavyAnimatedText(
                            '성장',
                            textStyle: textTheme.headline3!
                                .copyWith(color: Colors.lightBlue),
                            speed: Duration(milliseconds: 600),
                          ),
                        ],
                        repeatForever: true,
                        pause: Duration(milliseconds: 3000),
                      ),
                    ),
                    Text('하는', style: textTheme.headline3),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: '개발자\n',
                    style: textTheme.headline3,
                    children: [
                      TextSpan(
                        text: '임연우',
                        style: textTheme.headline2!
                            .copyWith(color: Colors.lightBlue),
                      ),
                      TextSpan(text: '입니다.'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget AboutSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '임연우 / Yeonwoo Lim',
          style: textTheme.headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        Text('1996.12.13 / 경기도 구리시'),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.phone, size: 23),
            SizedBox(width: 5),
            Flexible(
              child: Text('010-4788-8356'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.envelope, size: 23),
            SizedBox(width: 5),
            Flexible(
              child: Text('1213terry@naver.com'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.github, size: 23),
            SizedBox(width: 5),
            Flexible(
              child: Text('https://github.com/terry1213'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.bloggerB, size: 23),
            SizedBox(width: 5),
            Flexible(
              child: Text('https://terry1213.github.io/categories/'),
            ),
          ],
        ),
      ],
    );
  }

  Widget EducationSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: textTheme.headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2012.02-2015.02'),
            SizedBox(width: 5),
            Text('새음 기독 대안학교'),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2015.02-2021.02'),
            SizedBox(width: 5),
            Text('한동대학교 컴퓨터공학과'),
          ],
        ),
      ],
    );
  }

  Widget CareerSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Career',
          style: textTheme.headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.12-2021.02'),
            SizedBox(width: 5),
            Flexible(
              child: Text('홀잡펠이펙티브마이크로브스 Flutter 개발자'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2021.02-2021.08'),
            SizedBox(width: 5),
            Flexible(
              child: Text('소프트웨어팩토리 Flutter 개발자'),
            )
          ],
        ),
      ],
    );
  }

  Widget ProjectSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project',
          style: textTheme.headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.07'),
            SizedBox(width: 5),
            Flexible(
              child: Text('음악 공유 어플 \'아지트\' 개발(iOS)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.11'),
            SizedBox(width: 5),
            Flexible(
              child: Text('영어 복습 어플 \'오답노트\' 개발(Flutter)'),
            )
          ],
        ),
      ],
    );
  }

  Widget CertificateSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Certificate',
          style: textTheme.headline5!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.05'),
            SizedBox(width: 5),
            Flexible(
              child: Text('토익 875점'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.06'),
            SizedBox(width: 5),
            Flexible(
              child: Text('정보처리기사(필기)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.08'),
            SizedBox(width: 5),
            Flexible(
              child: Text('코더스하이 iOS 어플리케이션 캠프 최우수상'),
            )
          ],
        ),
      ],
    );
  }
}
