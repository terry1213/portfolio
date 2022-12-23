import 'package:portfolio/feature/skill/data/model/skill_model.dart';
import 'package:portfolio/feature/skill/domain/entity/skill.dart';

extension SkillModelExt on SkillModel {
  Skill toEntity() => Skill(
        name: name,
        detail: detail,
      );
}
