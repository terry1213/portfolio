import 'package:portfolio/feature/project/data/data_source/project_github_data_source.dart';
import 'package:portfolio/feature/project/data/model/project_model.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/feature/project/mapper/model_to_entity_mapper.dart';

class ProjectRepository {
  final ProjectGithubDataSource _projectGithubDataSource =
      ProjectGithubDataSource();

  Future<List<Project>> readAllProjects() async {
    final List<ProjectModel> projectModels =
        await _projectGithubDataSource.readAllProjects();
    final List<Project> project =
        projectModels.map((projectModel) => projectModel.toEntity()).toList();
    return project;
  }
}
