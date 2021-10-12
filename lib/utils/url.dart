import 'package:url_launcher/url_launcher.dart';

enum UrlKey {
  // Contact
  BLOG,
  EMAIL,
  GITHUB,
  LINKEDIN,
  PHONE,
  // AppStore
  HEM_A,
  SPOTALE_A,
  LIFE337_A,
  HAMSUNG_A,
  // Google PlayStore
  HEM_G,
  SPOTALE_G,
  LIFE337_G,
  HAMSUNG_G,
}

const Map<UrlKey, String> _urls = {
  // Contact
  UrlKey.BLOG: 'https://terry1213.github.io/categories/',
  UrlKey.EMAIL: 'mailto:1213terry@naver.com',
  UrlKey.GITHUB: 'https://github.com/terry1213',
  UrlKey.LINKEDIN:
      'https://www.linkedin.com/in/%EC%97%B0%EC%9A%B0-%EC%9E%84-89291320b/',
  UrlKey.PHONE: 'sms:01047888356',
  // AppStore
  UrlKey.HEM_A:
      'https://apps.apple.com/kr/app/hem-%EC%B2%B4%ED%97%98%EB%8B%A8/id1475463852',
  UrlKey.SPOTALE_A:
      'https://apps.apple.com/kr/app/spotale-%EC%8A%A4%ED%8C%9F%ED%85%8C%EC%9D%BC/id1505086427',
  UrlKey.LIFE337_A: 'https://apps.apple.com/kr/app/3-3-7-life/id1572404447',
  UrlKey.HAMSUNG_A:
      'https://apps.apple.com/kr/app/%ED%95%A8%EC%84%B1-%ED%95%A8%EA%BB%98-%EC%84%B1%EA%B2%BD-%EC%9D%BD%EA%B8%B0/id1552812826',
  // Google PlayStore
  UrlKey.HEM_G:
      'https://play.google.com/store/apps/details?id=com.swfact.hemomg',
  UrlKey.SPOTALE_G:
      'https://play.google.com/store/apps/details?id=com.swfact.spotale',
  UrlKey.LIFE337_G:
      'https://play.google.com/store/apps/details?id=com.swfact.life337',
  UrlKey.HAMSUNG_G:
      'https://play.google.com/store/apps/details?id=com.swfact.church',
};

void launchUrlByKey(UrlKey key) async => await canLaunch(_urls[key] ?? '')
    ? await launch(_urls[key] ?? '')
    : throw 'Could not launch $_urls';
