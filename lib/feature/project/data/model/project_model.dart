class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.period,
    required this.team,
    required this.role,
    required this.detail,
    required this.function,
    required this.techStack,
    required this.git,
    required this.link,
    required this.image,
  });

  final String title;
  final String period;
  final String team;
  final String role;
  final String detail;
  final String function;
  final String techStack;
  final String git;
  final String link;
  final String image;

  factory ProjectModel.fromMap(Map map) => ProjectModel(
        title: map['title'],
        period: map['period'],
        team: map['team'],
        role: map['role'],
        detail: map['detail'],
        function: map['function'],
        techStack: map['techStack'],
        git: map['git'],
        link: map['link'],
        image: map['image'],
      );
}
