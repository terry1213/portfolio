import 'package:portfolio/utils/url.dart';
import 'package:url_launcher/url_launcher_string.dart';

class App {
  const App({
    required this.name,
    required this.detail,
    required this.works,
    this.appStoreLink,
    this.googlePlayStoreLink,
  });

  final String name;
  final String detail;
  final List<String> works;
  final UrlKey? appStoreLink;
  final UrlKey? googlePlayStoreLink;

  Future<void> openAppStoreUrl() async =>
      await canLaunchUrlString(urls[appStoreLink]!)
          ? await launchUrlString(urls[appStoreLink] ?? '')
          : throw 'Could not launch ${urls[appStoreLink]}';

  Future<void> openGooglePlayStoreUrl() async =>
      await canLaunchUrlString(urls[googlePlayStoreLink]!)
          ? await launchUrlString(urls[googlePlayStoreLink]!)
          : throw 'Could not launch ${urls[googlePlayStoreLink]}';
}
