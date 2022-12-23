import 'package:portfolio/feature/skill/data/repository/skill_repository.dart';
import 'package:portfolio/feature/skill/domain/entity/skill.dart';

class ReadAllSkillsUseCase {
  final SkillRepository skillRepository;

  const ReadAllSkillsUseCase(this.skillRepository);

  Future<List<Skill>> execute(ReadAllSkillsParam readAllSkillsParam) async {
    return await skillRepository.readAllSkills();
  }
}

class ReadAllSkillsParam {
  const ReadAllSkillsParam();
}
