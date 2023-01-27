class SectionModel {
  const SectionModel({
    required this.period,
    required this.detail,
    required this.works,
  });

  final String period;
  final String detail;
  final List<String> works;

  factory SectionModel.fromMap(Map map) => SectionModel(
        period: map['period'],
        detail: map['detail'],
        works: map['works'].cast<String>(),
      );
}
