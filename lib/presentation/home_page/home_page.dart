import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/config/url.dart';
import 'package:portfolio/models/contact.dart';
import 'package:portfolio/ui/component/image_with_animated_opacity.dart';
import 'package:portfolio/utils/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Contact> _contacts = const <Contact>[
    Contact(
      urlKey: UrlKey.email,
      iconData: LineIcons.envelope,
      detail: 'Email',
    ),
    Contact(
      urlKey: UrlKey.linkedin,
      iconData: LineIcons.linkedin,
      detail: 'LinkedIn',
    ),
    Contact(
      urlKey: UrlKey.blog,
      iconData: LineIcons.blogger,
      detail: 'Blog',
    ),
    Contact(
      urlKey: UrlKey.github,
      iconData: LineIcons.githubSquare,
      detail: 'Github',
    ),
  ];

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
    List<IconButton> iconButtons = _contacts
        .map((contact) => IconButton(
              onPressed: contact.openUrl,
              icon: Icon(contact.iconData),
              tooltip: contact.detail,
              iconSize: 30,
            ))
        .toList();

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: screenSize.width / 15, vertical: 70),
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
    );
  }
}
