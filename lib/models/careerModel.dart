import 'appModel.dart';

class CareerModel {
  final String company;
  final String period;
  final String position;
  final List<AppModel> apps;

  const CareerModel({
    required this.company,
    required this.period,
    required this.position,
    required this.apps,
  });
}
