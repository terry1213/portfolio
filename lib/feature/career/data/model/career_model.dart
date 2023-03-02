import 'package:portfolio/feature/career/data/model/section_model.dart';

class CareerModel {
  const CareerModel({
    required this.company,
    required this.period,
    required this.position,
    required this.detail,
    required this.sections,
  });

  final String company;
  final String period;
  final String position;
  final String detail;
  final List<SectionModel> sections;

  factory CareerModel.fromMap(Map map) => CareerModel(
        company: map['company'],
        period: map['period'],
        position: map['position'],
        detail: map['detail'],
        sections: (map['sections'] as List)
            .map((map) => SectionModel.fromMap(map))
            .toList(),
      );
}
