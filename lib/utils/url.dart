import 'package:url_launcher/url_launcher.dart';

enum UrlKey {
  // Contact
  blog,
  email,
  github,
  linkedin,
  // AppStore
  hemA,
  spotaleA,
  life337A,
  hamsungA,
  // Google PlayStore
  hemG,
  spotaleG,
  life337G,
  hamsungG,
  // Blog
  widgetOfTheWeekTag,
  widgetOfTheWeekLast,
  flutterDartDocumentTag,
  flutterDartDocumentLast,
  decodingFlutterTag,
  decodingFlutterLast,
  stateManagementGetx,
  stateManagementProvider,
  algorithmTag,
  algorithmLast,
  errorTag,
  errorLast,
}

const Map<UrlKey, String> _urls = <UrlKey, String>{
  // Contact
  UrlKey.blog: 'https://terry1213.github.io/categories/',
  UrlKey.email: 'mailto:1213terry@naver.com',
  UrlKey.github: 'https://github.com/terry1213',
  UrlKey.linkedin:
      'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
  // AppStore
  UrlKey.hemA:
      'https://apps.apple.com/kr/app/hem-%EC%B2%B4%ED%97%98%EB%8B%A8/id1475463852',
  UrlKey.spotaleA:
      'https://apps.apple.com/kr/app/spotale-%EC%8A%A4%ED%8C%9F%ED%85%8C%EC%9D%BC/id1505086427',
  UrlKey.life337A: 'https://apps.apple.com/kr/app/3-3-7-life/id1572404447',
  UrlKey.hamsungA:
      'https://apps.apple.com/kr/app/%ED%95%A8%EC%84%B1-%ED%95%A8%EA%BB%98-%EC%84%B1%EA%B2%BD-%EC%9D%BD%EA%B8%B0/id1552812826',
  // Google PlayStore
  UrlKey.hemG:
      'https://play.google.com/store/apps/details?id=com.swfact.hemomg',
  UrlKey.spotaleG:
      'https://play.google.com/store/apps/details?id=com.swfact.spotale',
  UrlKey.life337G:
      'https://play.google.com/store/apps/details?id=com.swfact.life337',
  UrlKey.hamsungG:
      'https://play.google.com/store/apps/details?id=com.swfact.church',
  UrlKey.widgetOfTheWeekTag:
      'https://terry1213.github.io/tags/#widgetoftheweek',
  UrlKey.widgetOfTheWeekLast:
      'https://terry1213.github.io/flutter/flutter-widget-of-the-week-sliverappbar/',
  UrlKey.flutterDartDocumentTag: 'https://terry1213.github.io/tags/#document',
  UrlKey.flutterDartDocumentLast:
      'https://terry1213.github.io/flutter/flutter-document-hot-reload/',
  UrlKey.decodingFlutterTag:
      'https://terry1213.github.io/tags/#decodingflutter',
  UrlKey.decodingFlutterLast:
      'https://terry1213.github.io/flutter/flutter-decoding-flutter-rendering/',
  UrlKey.stateManagementGetx:
      'https://terry1213.github.io/flutter/flutter-getx/',
  UrlKey.stateManagementProvider:
      'https://terry1213.github.io/flutter/flutter-provider/',
  UrlKey.algorithmTag:
      'https://terry1213.github.io/tags/#%EC%BD%94%EB%94%A9%EB%AC%B8%EC%A0%9C',
  UrlKey.algorithmLast: 'https://terry1213.github.io/backjoon/9455/',
  UrlKey.errorTag: 'https://terry1213.github.io/tags/#error',
  UrlKey.errorLast:
      'https://terry1213.github.io/flutter/flutter-no-scaffoldmessenger-widget-found/',
};

Future<void> launchUrlByKey(UrlKey key) async =>
    await canLaunch(_urls[key] ?? '')
        ? await launch(_urls[key] ?? '')
        : throw 'Could not launch $_urls';
