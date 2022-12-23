class AppModel {
  const AppModel({
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

  factory AppModel.fromMap(Map map) => AppModel(
        name: map['name'],
        detail: map['detail'],
        works: map['works'].cast<String>(),
        appStoreLink: map['appStoreLink'],
        googlePlayStoreLink: map['googlePlayStoreLink'],
      );
}
