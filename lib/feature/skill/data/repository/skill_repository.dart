import 'package:portfolio/feature/skill/data/data_source/skill_github_data_source.dart';
import 'package:portfolio/feature/skill/data/model/skill_model.dart';
import 'package:portfolio/feature/skill/domain/entity/skill.dart';
import 'package:portfolio/feature/skill/mapper/model_to_entity_mapper.dart';

class SkillRepository {
  final SkillGithubDataSource _skillGithubDataSource = SkillGithubDataSource();

  Future<List<Skill>> readAllSkills() async {
    final List<SkillModel> skillModels =
        await _skillGithubDataSource.readAllSkills();
    final List<Skill> skills =
        skillModels.map((skillModel) => skillModel.toEntity()).toList();
    return skills;
  }
}
