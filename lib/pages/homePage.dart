import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final ScrollController _scrollController;

  HomePage(this._scrollController);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> _urls = {
    'Email': 'mailto:1213terry@naver.com',
    'Phone': 'sms:01047888356',
    'LinkedIn':
    'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
    'Blog': 'https://terry1213.github.io/categories/',
    'Github': 'https://github.com/terry1213',
  };
  bool change = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100)).then((_) {
      setState(() {
        change = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        controller: widget._scrollController,
        child: Container(
          height: 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned(
                  bottom: -1000,
                  right: -350,
                  child: ClipOval(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1500),
                      height: 1900,
                      width: change ? 1000 : 0,
                      color: Colors.white10,
                      curve: Curves.decelerate,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                        ),
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
                        SizedBox(
                          height: 300,
                        ),
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
                    SizedBox(
                      width: 45,
                    ),
                    Image.asset('assets/profile.png', width: 600),
                  ],
                ),
              ],
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