import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const Map<String, String> _urls = {
    'Email': 'mailto:1213terry@naver.com',
    'Phone': 'sms:01047888356',
    'LinkedIn':
        'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
    'Blog': 'https://terry1213.github.io/categories/',
    'Github': 'https://github.com/terry1213',
  };
  static Size size = Get.size;
  static TextTheme textTheme = Get.textTheme;

  const HomePage();

  @override
  Widget build(BuildContext context) {
    Future<double> _width = Future<double>.value(1000);
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1360 ? size.width - 80 : 1360,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  FutureBuilder(
                    future: _width,
                    initialData: 0.0,
                    builder: (context, snapshot) {
                      return Positioned(
                        bottom: ScreenUtilMinimum(-1000).sp,
                        right: ScreenUtilMinimum(-350).sp,
                        child: ClipOval(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 2000),
                            height: ScreenUtilMinimum(1900).sp,
                            width:
                                ScreenUtilMinimum(snapshot.data as double).sp,
                            color: Colors.white10,
                            curve: Curves.decelerate,
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: ScreenUtilMinimum(120).w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: ScreenUtilMinimum(200).h),
                          RichText(
                            text: TextSpan(
                              text: '안녕하세요,\n',
                              style: textTheme.headline2,
                              children: [
                                TextSpan(text: 'Flutter 개발자 '),
                                TextSpan(
                                    text: '임연우',
                                    style: textTheme.headline1!
                                        .copyWith(color: Colors.lightBlue)),
                                TextSpan(text: '입니다.'),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtilMinimum(300).h),
                          Text('Contact me',
                              style: textTheme.bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () => _launchURL('Email'),
                                icon: Icon(LineIcons.envelopeSquare),
                                tooltip: 'Email',
                                splashRadius: 15,
                                iconSize: ScreenUtilMinimum(30).sp,
                              ),
                              IconButton(
                                onPressed: () => _launchURL('Phone'),
                                icon: Icon(LineIcons.phoneSquare),
                                tooltip: 'Phone',
                                splashRadius: 15,
                                iconSize: ScreenUtilMinimum(30).sp,
                              ),
                              IconButton(
                                onPressed: () => _launchURL('LinkedIn'),
                                icon: Icon(LineIcons.linkedin),
                                tooltip: 'LinkedIn',
                                splashRadius: 15,
                                iconSize: ScreenUtilMinimum(30).sp,
                              ),
                              IconButton(
                                onPressed: () => _launchURL('Blog'),
                                icon: Icon(LineIcons.blogger),
                                tooltip: 'Blog',
                                splashRadius: 15,
                                iconSize: ScreenUtilMinimum(30).sp,
                              ),
                              IconButton(
                                onPressed: () => _launchURL('Github'),
                                icon: Icon(LineIcons.githubSquare),
                                tooltip: 'Github',
                                splashRadius: 15,
                                iconSize: ScreenUtilMinimum(30).sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: ScreenUtilMinimum(45).w),
                      Image.asset('assets/profile.png',
                          width: ScreenUtilMinimum(600).sp),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String key) async => await canLaunch(_urls[key] ?? '')
      ? await launch(_urls[key] ?? '')
      : throw 'Could not launch $_urls';
}
