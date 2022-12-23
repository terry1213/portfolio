import 'package:portfolio/feature/project/data/repository/project_repository.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';

class ReadAllProjectsUseCase {
  final ProjectRepository projectRepository;

  const ReadAllProjectsUseCase(this.projectRepository);

  Future<List<Project>> execute(
      ReadAllProjectsParam readAllProjectsParam) async {
    return await projectRepository.readAllProjects();
  }
}

class ReadAllProjectsParam {
  const ReadAllProjectsParam();
}
