import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/url.dart';
import 'package:portfolio/widgets/imageWidgetPlaceholder.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Future<double> _width = Future.delayed(Duration(milliseconds: 500))
        .then((value) => Future<double>.value(1000));
    List<IconButton> iconButtons = [
      IconButton(
        onPressed: () => launchUrlByKey(UrlKey.EMAIL),
        icon: Icon(LineIcons.envelopeSquare),
        tooltip: 'Email',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlByKey(UrlKey.PHONE),
        icon: Icon(LineIcons.phoneSquare),
        tooltip: 'Phone',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlByKey(UrlKey.LINKEDIN),
        icon: Icon(LineIcons.linkedin),
        tooltip: 'LinkedIn',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlByKey(UrlKey.BLOG),
        icon: Icon(LineIcons.blogger),
        tooltip: 'Blog',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlByKey(UrlKey.GITHUB),
        icon: Icon(LineIcons.githubSquare),
        tooltip: 'Github',
        iconSize: 30,
      ),
    ];
    double profileImageWidth = ResponsiveWidget.isMediumScreen(context)
        ? (400 < 420 / 1200 * screenSize.width
            ? 420 / 1200 * screenSize.width
            : 400)
        : (600 > 420 - 1200 + screenSize.width
            ? 420 - 1200 + screenSize.width
            : 600);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: screenSize.width / 15, vertical: 70),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '안녕하세요,\n',
                    style: Theme.of(context).textTheme.headline2,
                    children: [
                      TextSpan(text: 'Flutter 개발자\n'),
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 400,
                    height: 400 * 2048 / 1536,
                    child: ImageWithAnimatedOpacity(
                      image: AssetImage('assets/profile.png'),
                    ),
                  ),
                ),
                Text('Contact me',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).iconTheme.color,
                        fontWeight: FontWeight.bold)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: iconButtons,
                )
              ],
            )
          : Stack(
              alignment: Alignment.bottomRight,
              children: [
                FutureBuilder(
                  future: _width,
                  initialData: 0.0,
                  builder: (context, snapshot) {
                    return Positioned(
                      bottom: -1000,
                      right: ResponsiveWidget.isLargeScreen(context)
                          ? -350
                          : -350 * 1200 / screenSize.width,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height: ResponsiveWidget.isLargeScreen(context)
                                ? 200
                                : 100),
                        RichText(
                          text: TextSpan(
                            text: '안녕하세요,\n',
                            style: Theme.of(context).textTheme.headline2,
                            children: [
                              ResponsiveWidget.isLargeScreen(context)
                                  ? TextSpan(text: 'Flutter 개발자 ')
                                  : TextSpan(text: 'Flutter 개발자\n'),
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
                            height: ResponsiveWidget.isLargeScreen(context)
                                ? 270
                                : 110),
                        Text('Contact me',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Theme.of(context).iconTheme.color,
                                    fontWeight: FontWeight.bold)),
                        ResponsiveWidget.isLargeScreen(context)
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: iconButtons,
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: iconButtons.sublist(0, 3),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: iconButtons.sublist(3, 5),
                                  ),
                                ],
                              ),
                      ],
                    ),
                    Container(
                      width: profileImageWidth,
                      height: profileImageWidth * 2048 / 1536,
                      child: ImageWithAnimatedOpacity(
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
