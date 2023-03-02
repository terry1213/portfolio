import 'package:portfolio/feature/career/data/model/career_model.dart';
import 'package:portfolio/feature/career/data/model/section_model.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/domain/entity/section.dart';

extension CareerModelExt on CareerModel {
  Career toEntity() => Career(
        company: company,
        period: period,
        position: position,
        detail: detail,
        sections:
            sections.map((sectionModel) => sectionModel.toEntity()).toList(),
      );
}

extension SectionModelExt on SectionModel {
  Section toEntity() => Section(
        period: period,
        detail: detail,
        works: works,
      );
}
