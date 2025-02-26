import 'package:url_launcher/url_launcher_string.dart';

class Project {
  const Project({
    required this.title,
    required this.period,
    required this.team,
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
  final String detail;
  final String function;
  final String techStack;
  final String git;
  final String link;
  final String image;

  Future<void> openGitUrl() async => await launchUrlString(git);

  Future<void> openLinkUrl() async => await launchUrlString(link);
}
