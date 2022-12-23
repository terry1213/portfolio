class SkillModel {
  const SkillModel({
    required this.name,
    required this.detail,
  });

  final String name;
  final String detail;

  factory SkillModel.fromMap(Map map) => SkillModel(
        name: map['name'],
        detail: map['detail'],
      );
}
