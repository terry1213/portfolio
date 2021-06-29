import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  Map<String, String> _urls = {
    'Email': 'mailto:1213terry@naver.com',
    'Phone': 'sms:01047888356',
    'LinkedIn': 'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
    'Blog': 'https://terry1213.github.io/categories/',
    'Github': 'https://github.com/terry1213',
  };

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '안녕하세요,\n',
                    style: Theme.of(context).textTheme.headline3,
                    children: [
                      TextSpan(text: 'Flutter 개발자 '),
                      TextSpan(
                          text: '임연우',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .apply(color: Colors.lightBlue)),
                      TextSpan(text: '입니다.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text('Contact me',
                    style: Theme.of(context).textTheme.bodyText1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => _launchURL('Email'),
                      icon: Icon(LineIcons.envelopeSquare),
                      tooltip: 'Email',
                      splashRadius: 15,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () => _launchURL('Phone'),
                      icon: Icon(LineIcons.phoneSquare),
                      tooltip: 'Phone',
                      splashRadius: 15,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () => _launchURL('LinkedIn'),
                      icon: Icon(LineIcons.linkedin),
                      tooltip: 'LinkedIn',
                      splashRadius: 15,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () => _launchURL('Blog'),
                      icon: Icon(LineIcons.blogger),
                      tooltip: 'Blog',
                      splashRadius: 15,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () => _launchURL('Github'),
                      icon: Icon(LineIcons.githubSquare),
                      tooltip: 'Github',
                      splashRadius: 15,
                      iconSize: 30,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset('assets/profile.png',
                width: size.width * 0.3 < 300 ? 300 : size.width * 0.3),
          ],
        ),
      ),
    );
  }

  void _launchURL(String key) async => await canLaunch(_urls[key])
      ? await launch(_urls[key])
      : throw 'Could not launch $_urls';
}