part of '../career_view.dart';

class AppSection extends StatelessWidget {
  const AppSection({Key? key, required this.app}) : super(key: key);

  final App app;

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
                      color: Colors.lightBlue,
                    ),
              ),
              const SizedBox(width: 5),
              app.appStoreLink == null
                  ? const SizedBox()
                  : IconButton(
                      constraints: const BoxConstraints(),
                      icon: const Icon(LineIcons.apple),
                      iconSize: 30,
                      onPressed: app.openAppStoreUrl,
                      padding: EdgeInsets.zero,
                      splashRadius: 15,
                      tooltip: '앱스토어',
                    ),
              app.googlePlayStoreLink == null
                  ? const SizedBox()
                  : IconButton(
                      constraints: const BoxConstraints(),
                      icon: const Icon(LineIcons.android),
                      iconSize: 30,
                      onPressed: app.openGooglePlayStoreUrl,
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
                app.sections.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                            Text(
                              app.sections[index].detail,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                app.sections[index].period,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ] +
                          List<Widget>.generate(
                            app.sections[index].works.length,
                            (int index2) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 15, 10, 0),
                                        child: Icon(
                                          Icons.circle,
                                          size: 8,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          app.sections[index].works[index2],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                    ),
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
