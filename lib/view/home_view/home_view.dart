import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/component/image_with_animated_opacity.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final Future<double> width =
        Future<void>.delayed(const Duration(milliseconds: 500))
            .then((void value) => Future<double>.value(1000));
    final double profileImageWidth = ResponsiveWidget.isMediumScreen(context)
        ? (400 < 420 / 1200 * screenSize.width
            ? 420 / 1200 * screenSize.width
            : 400)
        : (600 > 420 - 1200 + screenSize.width
            ? 420 - 1200 + screenSize.width
            : 600);

    final List<IconButton> iconButtons = [
      IconButton(
        onPressed: () => launchUrlString('mailto:1213terry@naver.com'),
        icon: const Icon(LineIcons.envelope),
        tooltip: 'Email',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlString(
            'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/'),
        icon: const Icon(LineIcons.linkedin),
        tooltip: 'LinkedIn',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () =>
            launchUrlString('https://terry1213.github.io/categories/'),
        icon: const Icon(LineIcons.blogger),
        tooltip: 'Blog',
        iconSize: 30,
      ),
      IconButton(
        onPressed: () => launchUrlString('https://github.com/terry1213'),
        icon: const Icon(LineIcons.githubSquare),
        tooltip: 'Github',
        iconSize: 30,
      ),
    ];

    return Template(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width / 15, vertical: 70),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '안녕하세요,\n',
                      style: Theme.of(context).textTheme.headline2,
                      children: <TextSpan>[
                        const TextSpan(text: 'Flutter 개발자\n'),
                        TextSpan(
                          text: '임연우',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.lightBlue),
                        ),
                        const TextSpan(text: '입니다.'),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 400,
                      height: 400 * 2048 / 1536,
                      child: ImageWithAnimatedOpacity(
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Contact me',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Theme.of(context).iconTheme.color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: iconButtons,
                  ),
                ],
              )
            : Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  FutureBuilder<double>(
                    future: width,
                    initialData: 0.0,
                    builder:
                        (BuildContext context, AsyncSnapshot<double> snapshot) {
                      return Positioned(
                        bottom: -1000,
                        right: ResponsiveWidget.isLargeScreen(context)
                            ? -350
                            : -350 * 1200 / screenSize.width,
                        child: ClipOval(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 2000),
                            height: 1900,
                            width: snapshot.data,
                            color: Theme.of(context).dividerColor,
                            curve: Curves.decelerate,
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            height: ResponsiveWidget.isLargeScreen(context)
                                ? 200
                                : 100,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '안녕하세요,\n',
                              style: Theme.of(context).textTheme.headline2,
                              children: <TextSpan>[
                                if (ResponsiveWidget.isLargeScreen(context))
                                  const TextSpan(text: 'Flutter 개발자 ')
                                else
                                  const TextSpan(text: 'Flutter 개발자\n'),
                                TextSpan(
                                  text: '임연우',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(color: Colors.lightBlue),
                                ),
                                const TextSpan(text: '입니다.'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ResponsiveWidget.isLargeScreen(context)
                                ? 270
                                : 110,
                          ),
                          Text(
                            'Contact me',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context).iconTheme.color,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          if (ResponsiveWidget.isLargeScreen(context))
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: iconButtons,
                            )
                          else
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: iconButtons.sublist(0, 2),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: iconButtons.sublist(2, 4),
                                ),
                              ],
                            ),
                        ],
                      ),
                      SizedBox(
                        width: profileImageWidth,
                        height: profileImageWidth * 2048 / 1536,
                        child: const ImageWithAnimatedOpacity(
                          image: AssetImage('assets/profile.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
