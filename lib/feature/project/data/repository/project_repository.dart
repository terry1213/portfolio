import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/feature/project/data/data_source/project_github_data_source.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/feature/project/mapper/model_to_entity_mapper.dart';

class ProjectRepository {
  late final ProjectGithubDataSource _projectGithubDataSource;

  ProjectRepository() {
    _projectGithubDataSource = getIt<ProjectGithubDataSource>();
  }

  Future<Result<List<Project>>> readAllProjects() async {
    try {
      final projectModels = await _projectGithubDataSource.readAllProjects();
      final projects =
          projectModels.map((projectModel) => projectModel.toEntity()).toList();
      return Result.success(projects);
    } on NetworkException catch (e) {
      return Result.failure(Failure.network(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on JsonParsingException catch (e) {
      return Result.failure(Failure.parsing(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on DataNotFoundException catch (e) {
      return Result.failure(Failure.notFound(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      return Result.failure(Failure.timeout(
        message: e.message,
      ));
    } catch (e, stackTrace) {
      return Result.failure(Failure.unknown(
        message: e.toString(),
        details: stackTrace.toString(),
      ));
    }
  }
}
