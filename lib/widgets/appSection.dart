import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/models/appModel.dart';
import 'package:portfolio/utils/url.dart';

class AppSection extends StatelessWidget {
  final AppModel app;

  const AppSection({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                app.name,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 5),
              IconButton(
                constraints: BoxConstraints(),
                icon: Icon(LineIcons.apple),
                iconSize: 30,
                onPressed: () => launchUrlByKey(app.appStoreLink),
                padding: EdgeInsets.zero,
                splashRadius: 15,
                tooltip: '앱스토어',
              ),
              IconButton(
                constraints: BoxConstraints(),
                icon: Icon(LineIcons.android),
                iconSize: 30,
                onPressed: () => launchUrlByKey(app.googlePlayStoreLink),
                padding: EdgeInsets.zero,
                splashRadius: 15,
                tooltip: '구글 플레이 스토어',
              ),
            ],
          ),
          Padding(
            child: Text(
              app.detail,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          ),
          Padding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                app.works.length,
                (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Icon(
                              Icons.circle,
                              size: 15,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              app.works[index].main,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    );
  }
}
