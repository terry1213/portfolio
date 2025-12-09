import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/feature/career/data/model/section_model.dart';

part 'career_model.freezed.dart';
part 'career_model.g.dart';

@freezed
class CareerModel with _$CareerModel {
  const factory CareerModel({
    required String company,
    required String period,
    required String position,
    required String detail,
    required List<SectionModel> sections,
  }) = _CareerModel;

  factory CareerModel.fromJson(Map<String, dynamic> json) =>
      _$CareerModelFromJson(json);
}
