import 'package:portfolio/feature/career/data/model/section_model.dart';

class AppModel {
  const AppModel({
    required this.name,
    required this.detail,
    required this.sections,
    this.appStoreLink,
    this.googlePlayStoreLink,
  });

  final String name;
  final String detail;
  final List<SectionModel> sections;
  final String? appStoreLink;
  final String? googlePlayStoreLink;

  factory AppModel.fromMap(Map map) => AppModel(
        name: map['name'],
        detail: map['detail'],
        sections: (map['sections'] as List)
            .map((map) => SectionModel.fromMap(map))
            .toList(),
        appStoreLink: map['appStoreLink'],
        googlePlayStoreLink: map['googlePlayStoreLink'],
      );
}
