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
  final String? appStoreLink;
  final String? googlePlayStoreLink;

  Future<void> openAppStoreUrl() async => await launchUrlString(appStoreLink!);

  Future<void> openGooglePlayStoreUrl() async =>
      await launchUrlString(googlePlayStoreLink!);
}
