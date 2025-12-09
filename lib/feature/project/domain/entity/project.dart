import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const Project._();

  const factory Project({
    required String title,
    required String period,
    required String team,
    required String detail,
    required String function,
    required String techStack,
    required String git,
    required String link,
    required String image,
  }) = _Project;

  Future<void> openGitUrl() async => await launchUrlString(git);

  Future<void> openLinkUrl() async => await launchUrlString(link);
}
