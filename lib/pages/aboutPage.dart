import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/widgets/horizontalDashedDivider.dart';
import 'package:portfolio/widgets/verticalDashedDivider.dart';

class AboutPage extends StatelessWidget {
  final ScrollController _scrollController;

  AboutPage(this._scrollController);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
      child: Center(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            height: 750,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.bodyText2!,
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 55,
                                        child: AnimatedTextKit(
                                          animatedTexts: [
                                            WavyAnimatedText(
                                              '기록',
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .copyWith(
                                                      color: Colors.lightBlue),
                                              speed:
                                                  Duration(milliseconds: 600),
                                            ),
                                            WavyAnimatedText(
                                              '성장',
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .copyWith(
                                                      color: Colors.lightBlue),
                                              speed:
                                                  Duration(milliseconds: 600),
                                            ),
                                          ],
                                          repeatForever: true,
                                          pause: Duration(milliseconds: 3000),
                                        ),
                                      ),
                                      Text('하는',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '개발자\n',
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                      children: [
                                        TextSpan(
                                          text: '임연우',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2!
                                              .copyWith(
                                                  color: Colors.lightBlue),
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
                      ),
                    ),
                    VerticalDashedDivider(indent: 30, endIndent: 30, space: 60),
                    Container(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            '임연우 / Yeonwoo Lim',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text('1996.12.13 / 경기도 구리시'),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(LineIcons.phone, size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('010-4788-8356'),
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
                                child: Text('1213terry@naver.com'),
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
                                child: Text('https://github.com/terry1213'),
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
                                child: Text(
                                    'https://terry1213.github.io/categories/'),
                              ),
                            ],
                          ),
                          HorizontalDashedDivider(space: 80),
                          Text(
                            'Education',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2012.02-2015.02'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('새음 기독 대안학교'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2015.02-2021.02'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('한동대학교 컴퓨터공학과'),
                            ],
                          ),
                          HorizontalDashedDivider(space: 80),
                          Text(
                            'Career',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.12-2021.02'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('홀잡펠이펙티브마이크로브스 Flutter 개발자'),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2021.02-           '),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('소프트웨어팩토리 Flutter 개발자'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    VerticalDashedDivider(indent: 30, endIndent: 30, space: 60),
                    Container(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Project',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.07'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('음악 공유 어플 \'아지트\' 개발(iOS)'),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.11'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('영어 복습 어플 \'오답노트\' 개발(Flutter)'),
                              )
                            ],
                          ),
                          HorizontalDashedDivider(space: 80),
                          Text(
                            'Certificate',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.05'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('토익 875점'),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.06'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('정보처리기사(필기)'),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2020.08'),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text('코더스하이 iOS 어플리케이션 캠프 최우수상'),
                              )
                            ],
                          ),
                          HorizontalDashedDivider(space: 100),
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
}
