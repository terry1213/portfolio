import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/feature/career/domain/entity/section.dart';

part 'career.freezed.dart';

@freezed
class Career with _$Career {
  const factory Career({
    required String company,
    required String period,
    required String position,
    required String detail,
    required List<Section> sections,
  }) = _Career;
}
