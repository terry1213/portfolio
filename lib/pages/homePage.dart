import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
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

  const HomePage();

  @override
  Widget build(BuildContext context) {
    Future<double> _width = Future<double>.value(1000);
    return Container(
      height: 820,
      width: 1360,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          FutureBuilder(
            future: _width,
            initialData: 0.0,
            builder: (context, snapshot) {
              return Positioned(
                bottom: -1000,
                right: -350,
                child: ClipOval(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 2000),
                    height: 1900,
                    width: snapshot.data as double,
                    color: Theme.of(context).dividerColor,
                    curve: Curves.decelerate,
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 120),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 200),
                  RichText(
                    text: TextSpan(
                      text: '안녕하세요,\n',
                      style: Theme.of(context).textTheme.headline2,
                      children: [
                        TextSpan(text: 'Flutter 개발자 '),
                        TextSpan(
                            text: '임연우',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(color: Colors.lightBlue)),
                        TextSpan(text: '입니다.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 300),
                  Text('Contact me',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.bold)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => _launchURL('Email'),
                        icon: Icon(LineIcons.envelopeSquare),
                        tooltip: 'Email',
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () => _launchURL('Phone'),
                        icon: Icon(LineIcons.phoneSquare),
                        tooltip: 'Phone',
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () => _launchURL('LinkedIn'),
                        icon: Icon(LineIcons.linkedin),
                        tooltip: 'LinkedIn',
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () => _launchURL('Blog'),
                        icon: Icon(LineIcons.blogger),
                        tooltip: 'Blog',
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () => _launchURL('Github'),
                        icon: Icon(LineIcons.githubSquare),
                        tooltip: 'Github',
                        iconSize: 30,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 45),
              Image.asset('assets/profile.png', width: 600),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String key) async => await canLaunch(_urls[key] ?? '')
      ? await launch(_urls[key] ?? '')
      : throw 'Could not launch $_urls';
}
