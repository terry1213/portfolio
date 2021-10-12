import 'package:portfolio/models/workModel.dart';
import 'package:portfolio/utils/url.dart';

class AppModel {
  final String name;
  final String detail;
  final List<WorkModel> works;
  final UrlKey appStoreLink;
  final UrlKey googlePlayStoreLink;

  const AppModel({
    required this.name,
    required this.detail,
    required this.works,
    required this.appStoreLink,
    required this.googlePlayStoreLink,
  });
}
