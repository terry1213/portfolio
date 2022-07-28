import 'package:portfolio/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class App {
  const App({
    required this.name,
    required this.detail,
    required this.works,
    required this.appStoreLink,
    required this.googlePlayStoreLink,
  });

  final String name;
  final String detail;
  final List<String> works;
  final UrlKey appStoreLink;
  final UrlKey googlePlayStoreLink;

  Future<void> openAppStoreUrl() async =>
      await canLaunch(urls[appStoreLink] ?? '')
          ? await launch(urls[appStoreLink] ?? '')
          : throw 'Could not launch ${urls[appStoreLink]}';

  Future<void> openGooglePlayStoreUrl() async =>
      await canLaunch(urls[googlePlayStoreLink] ?? '')
          ? await launch(urls[googlePlayStoreLink] ?? '')
          : throw 'Could not launch ${urls[googlePlayStoreLink]}';
}
