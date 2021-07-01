import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/widgets/dashedHorizontalDivider.dart';
import 'package:portfolio/widgets/dashedVerticalDivider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 470,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/profile_sidebar.jpg',
                                height: 200,
                                width: 200,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '기록',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(color: Colors.lightBlue),
                                children: [
                                  TextSpan(
                                      text: '하는\n개발자\n',
                                      style: Theme.of(context).textTheme.headline3),
                                  TextSpan(
                                      text: '임연우',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          .copyWith(color: Colors.lightBlue)),
                                  TextSpan(
                                      text: '입니다.',
                                      style: Theme.of(context).textTheme.headline3),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DashedVerticalDivider(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          '임연우 / Yeonwoo Lim',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.lightBlue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '1996.12.13 / 경기도 구리시',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(LineIcons.phone, size: 15),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text('010-4788-8356',
                                  style: Theme.of(context).textTheme.bodyText2),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(LineIcons.envelope, size: 15),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text('1213terry@naver.com',
                                  style: Theme.of(context).textTheme.bodyText2),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(LineIcons.github, size: 15),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text('https://github.com/terry1213',
                                  style: Theme.of(context).textTheme.bodyText2),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(LineIcons.bloggerB, size: 15),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text('https://terry1213.github.io/categories/',
                                  style: Theme.of(context).textTheme.bodyText2),
                            ),
                          ],
                        ),
                        DashedHorizontalDivider(
                          padding: EdgeInsets.symmetric(vertical: 40),
                        ),
                        Text(
                          'Education',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.lightBlue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2012.02-2015.02',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '새음 기독 대안학교',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2015.02-2021.02',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '한동대학교 컴퓨터공학과',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        DashedHorizontalDivider(
                          padding: EdgeInsets.symmetric(vertical: 40),
                        ),
                        Text(
                          'Career',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.lightBlue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.12-2021.02',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '홀잡펠이펙티브마이크로브스 Flutter 개발자',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2021.02-           ',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '소프트웨어팩토리 Flutter 개발자',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  DashedVerticalDivider(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Project',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.lightBlue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.07',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '음악 공유 어플 \'아지트\' 개발(iOS)',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.11',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '영어 복습 어플 \'오답노트\' 개발(Flutter)',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        DashedHorizontalDivider(
                          padding: EdgeInsets.symmetric(vertical: 40),
                        ),
                        Text(
                          'Certificate',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.lightBlue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.05',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '토익 875점',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.06',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '정보처리기사(필기)',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020.08',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                '코더스하이 iOS 어플리케이션 캠프 최우수상',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            )
                          ],
                        ),
                        DashedHorizontalDivider(
                          padding: EdgeInsets.symmetric(vertical: 50),
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
}
