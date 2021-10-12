import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio/models/app_model.dart';
import 'package:portfolio/utils/url.dart';

class AppSection extends StatelessWidget {
  const AppSection({Key? key, required this.app}) : super(key: key);

  final AppModel app;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                app.name,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 5),
              IconButton(
                constraints: const BoxConstraints(),
                icon: const Icon(LineIcons.apple),
                iconSize: 30,
                onPressed: () => launchUrlByKey(app.appStoreLink),
                padding: EdgeInsets.zero,
                splashRadius: 15,
                tooltip: '앱스토어',
              ),
              IconButton(
                constraints: const BoxConstraints(),
                icon: const Icon(LineIcons.android),
                iconSize: 30,
                onPressed: () => launchUrlByKey(app.googlePlayStoreLink),
                padding: EdgeInsets.zero,
                splashRadius: 15,
                tooltip: '구글 플레이 스토어',
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              app.detail,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<Widget>.generate(
                app.works.length,
                (int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 10,
                            ),
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
          ),
        ],
      ),
    );
  }
}
