import 'package:portfolio/feature/career/domain/entity/app.dart';

class Career {
  const Career({
    required this.company,
    required this.period,
    required this.position,
    required this.apps,
  });

  final String company;
  final String period;
  final String position;
  final List<App> apps;
}
