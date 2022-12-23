import 'package:flutter/material.dart';
import 'package:portfolio/feature/project/data/repository/project_repository.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';
import 'package:portfolio/feature/project/domain/usecase/read_all_projects_usecase.dart';
import 'package:portfolio/presentation/project_page/project_page_state.dart';

class ProjectPageController extends ChangeNotifier {
  ProjectPageController() {
    readAllProjects();
  }

  final ProjectRepository _projectRepository = ProjectRepository();

  ProjectPageState projectPageState = ProjectPageState.initial();

  List<Project> get projects => projectPageState.projects;
  int get carouselCurrentIndex => projectPageState.carouselCurrentIndex;

  Future<void> readAllProjects() async {
    projectPageState = projectPageState.whenLoading();
    final List<Project> projects =
        await ReadAllProjectsUseCase(_projectRepository)
            .execute(const ReadAllProjectsParam());
    projectPageState = projectPageState.whenLoaded(projects: projects);
    notifyListeners();
  }

  void changeCurrentIndex(int nextIndex) {
    projectPageState =
        projectPageState.whenCarouselMoved(carouselNextIndex: nextIndex);
    notifyListeners();
  }
}
