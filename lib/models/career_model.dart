import 'package:portfolio/models/app_model.dart';

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
}
