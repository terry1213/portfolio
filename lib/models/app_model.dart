import 'package:portfolio/models/work_model.dart';
import 'package:portfolio/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class AppModel {
  const AppModel({
    required this.name,
    required this.detail,
    required this.works,
    required this.appStoreLink,
    required this.googlePlayStoreLink,
  });

  final String name;
  final String detail;
  final List<WorkModel> works;
  final UrlKey appStoreLink;
  final UrlKey googlePlayStoreLink;

  Future<void> openAppStoreUrl() async =>
      await canLaunch(urls[appStoreLink] ?? '')
          ? await launch(urls[appStoreLink] ?? '')
          : throw 'Could not launch ${urls[appStoreLink]}';

  Future<void> openGooglePlayStoreUrl() async =>
      await canLaunch(urls[appStoreLink] ?? '')
          ? await launch(urls[appStoreLink] ?? '')
          : throw 'Could not launch ${urls[appStoreLink]}';
}
