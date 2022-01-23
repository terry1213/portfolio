import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width > 1360 ? screenSize.width : 1360,
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).bottomAppBarColor,
      child: Column(
        children: <Widget>[
          const Divider(),
          const SizedBox(height: 10),
          Text(
            'Copyright © 2021 | Yeonwoo Lim',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
