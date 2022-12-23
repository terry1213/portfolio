import 'package:portfolio/feature/skill/domain/entity/skill.dart';

enum SkillPageStateStatus {
  initial,
  loading,
  loaded,
}

class SkillPageState {
  SkillPageState._({
    required this.skillPageStateStatus,
    required this.skills,
  });

  SkillPageState.initial()
      : this._(
          skillPageStateStatus: SkillPageStateStatus.initial,
          skills: [],
        );

  final SkillPageStateStatus skillPageStateStatus;
  final List<Skill> skills;

  SkillPageState whenLoading() => copyWith(
        skillPageStateStatus: SkillPageStateStatus.loading,
        skills: [],
      );

  SkillPageState whenLoaded({required List<Skill> skills}) => copyWith(
        skillPageStateStatus: SkillPageStateStatus.loaded,
        skills: skills,
      );

  SkillPageState copyWith({
    SkillPageStateStatus? skillPageStateStatus,
    List<Skill>? skills,
  }) =>
      SkillPageState._(
        skillPageStateStatus: skillPageStateStatus ?? this.skillPageStateStatus,
        skills: skills ?? this.skills,
      );
}
