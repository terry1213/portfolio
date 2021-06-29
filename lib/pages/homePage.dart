import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
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
                  onPressed: () {},
                  icon: Icon(LineIcons.envelopeSquare),
                  tooltip: 'Email',
                  splashRadius: 15,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(LineIcons.phoneSquare),
                  tooltip: 'Phone',
                  splashRadius: 15,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(LineIcons.linkedin),
                  tooltip: 'LinkedIn',
                  splashRadius: 15,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(LineIcons.blogger),
                  tooltip: 'Blog',
                  splashRadius: 15,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
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
    );
  }
}