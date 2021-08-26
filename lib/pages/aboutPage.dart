import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class AboutPage extends StatelessWidget {
  final ScrollController _scrollController;

  AboutPage(this._scrollController);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1360 ? size.width - 80 : 1360,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: PhotoSection(context),
                    ),
                    VerticalDashedDivider(indent: 30, endIndent: 30, space: 60),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: ScreenUtilMinimum(15).h),
                          Expanded(
                            flex: 20,
                            child: AboutSection(context),
                          ),
                          HorizontalDashedDivider(
                              space: ScreenUtilMinimum(40).h),
                          Expanded(
                            flex: 10,
                            child: EducationSection(context),
                          ),
                          HorizontalDashedDivider(
                              space: ScreenUtilMinimum(40).h),
                          Expanded(
                            flex: 15,
                            child: CareerSection(context),
                          ),
                          HorizontalDashedDivider(
                              space: ScreenUtilMinimum(40).h),
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
                          SizedBox(height: ScreenUtilMinimum(15).h),
                          Expanded(
                            flex: 11,
                            child: ProjectSection(context),
                          ),
                          HorizontalDashedDivider(
                              space: ScreenUtilMinimum(40).h),
                          Expanded(
                            flex: 12,
                            child: CertificateSection(context),
                          ),
                          HorizontalDashedDivider(
                              space: ScreenUtilMinimum(40).h),
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
      ),
    );
  }

  Widget PhotoSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/profile2.jpg',
                height: ScreenUtilMinimum(200).sp,
                width: ScreenUtilMinimum(200).sp,
              ),
            ),
            SizedBox(width: ScreenUtilMinimum(30).w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: ScreenUtilMinimum(60).sp,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            '기록',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.lightBlue),
                            speed: Duration(milliseconds: 600),
                          ),
                          WavyAnimatedText(
                            '성장',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.lightBlue),
                            speed: Duration(milliseconds: 600),
                          ),
                        ],
                        repeatForever: true,
                        pause: Duration(milliseconds: 3000),
                      ),
                    ),
                    Text('하는', style: Theme.of(context).textTheme.headline3),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: '개발자\n',
                    style: Theme.of(context).textTheme.headline3,
                    children: [
                      TextSpan(
                        text: '임연우',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
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

  Widget AboutSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '임연우 / Yeonwoo Lim',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        Text('1996.12.13 / 경기도 구리시'),
        SizedBox(height: ScreenUtilMinimum(30).h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.phone, size: ScreenUtilMinimum(23).sp),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('010-4788-8356'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.envelope, size: ScreenUtilMinimum(23).sp),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('1213terry@naver.com'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.github, size: ScreenUtilMinimum(23).sp),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('https://github.com/terry1213'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(LineIcons.bloggerB, size: ScreenUtilMinimum(23).sp),
            SizedBox(width: ScreenUtilMinimum(5).w),
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: ScreenUtilMinimum(30).h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2012.02-2015.02'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Text('새음 기독 대안학교'),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2015.02-2021.02'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Text('한동대학교 컴퓨터공학과'),
          ],
        ),
      ],
    );
  }

  Widget CareerSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Career',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: ScreenUtilMinimum(30).h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.12-2021.02'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('홀잡펠이펙티브마이크로브스 Flutter 개발자'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2021.02-           '),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('소프트웨어팩토리 Flutter 개발자'),
            )
          ],
        ),
      ],
    );
  }

  Widget ProjectSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: ScreenUtilMinimum(30).h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.07'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('음악 공유 어플 \'아지트\' 개발(iOS)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.11'),
            SizedBox(width: ScreenUtilMinimum(5).w),
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Certificate',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: ScreenUtilMinimum(30).h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.05'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('토익 875점'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.06'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('정보처리기사(필기)'),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2020.08'),
            SizedBox(width: ScreenUtilMinimum(5).w),
            Flexible(
              child: Text('코더스하이 iOS 어플리케이션 캠프 최우수상'),
            )
          ],
        ),
      ],
    );
  }
}
