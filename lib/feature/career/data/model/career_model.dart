import 'package:portfolio/feature/career/data/model/app_model.dart';

class CareerModel {
  const CareerModel({
    required this.company,
    required this.period,
    required this.position,
    required this.apps,
  });

  final String company;
  final String period;
  final String position;
  final List<AppModel> apps;

  factory CareerModel.fromMap(Map map) => CareerModel(
        company: map['company'],
        period: map['period'],
        position: map['position'],
        apps:
            (map['apps'] as List).map((map) => AppModel.fromMap(map)).toList(),
      );
}
