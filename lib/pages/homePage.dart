import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          ],
        ),
        Image.asset('assets/profile.png', width: size.width * 0.3),
      ],
    );
  }
}
