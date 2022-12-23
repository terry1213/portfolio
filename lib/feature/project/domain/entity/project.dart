class Project {
  const Project({
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
}
