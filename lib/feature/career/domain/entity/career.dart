import 'package:portfolio/feature/career/domain/entity/section.dart';

class Career {
  const Career({
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
  final List<Section> sections;
}
