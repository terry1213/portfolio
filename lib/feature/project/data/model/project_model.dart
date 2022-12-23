class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.images,
    required this.link,
    required this.detail,
    required this.function,
    required this.techStack,
  });

  final String title;
  final List<String> images;
  final String link;
  final String detail;
  final String function;
  final String techStack;

  factory ProjectModel.fromMap(Map map) => ProjectModel(
        title: map['title'],
        images: map['images'].cast<String>(),
        link: map['link'],
        detail: map['detail'],
        function: map['function'],
        techStack: map['techStack'],
      );
}
