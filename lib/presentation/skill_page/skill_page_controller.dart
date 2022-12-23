import 'package:flutter/material.dart';
import 'package:portfolio/feature/skill/data/repository/skill_repository.dart';
import 'package:portfolio/feature/skill/domain/entity/skill.dart';
import 'package:portfolio/feature/skill/domain/usecase/read_all_skills_usecase.dart';
import 'package:portfolio/presentation/skill_page/skill_page_state.dart';

class SkillPageController extends ChangeNotifier {
  SkillPageController() {
    readAllSkills();
  }

  final SkillRepository _skillRepository = SkillRepository();

  SkillPageState skillPageState = SkillPageState.initial();

  List<Skill> get skills => skillPageState.skills;

  Future<void> readAllSkills() async {
    skillPageState = skillPageState.whenLoading();
    final List<Skill> skills = await ReadAllSkillsUseCase(_skillRepository)
        .execute(const ReadAllSkillsParam());
    skillPageState = skillPageState.whenLoaded(skills: skills);
    notifyListeners();
  }
}
