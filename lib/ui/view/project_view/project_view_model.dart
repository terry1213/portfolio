import 'package:flutter/material.dart';
import 'package:portfolio/feature/project/data/repository/project_repository.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/feature/project/domain/usecase/read_all_projects_usecase.dart';
import 'package:portfolio/ui/view/project_view/project_view_state.dart';

class ProjectViewModel extends ChangeNotifier {
  ProjectViewModel() {
    readAllProjects();
  }

  final ProjectRepository _projectRepository = ProjectRepository();

  ProjectViewState projectViewState = ProjectViewState.initial();

  List<Project> get projects => projectViewState.projects;

  Future<void> readAllProjects() async {
    projectViewState = projectViewState.whenLoading();
    final List<Project> projects =
        await ReadAllProjectsUseCase(_projectRepository)
            .execute(const ReadAllProjectsParam());
    projectViewState = projectViewState.whenLoaded(projects: projects);
    notifyListeners();
  }
}
