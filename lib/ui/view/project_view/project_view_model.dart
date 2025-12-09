import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/feature/project/domain/usecase/read_all_projects_usecase.dart';
import 'package:portfolio/ui/view/project_view/project_view_state.dart';

class ProjectViewModel extends ChangeNotifier {
  late final ReadAllProjectsUseCase _readAllProjectsUseCase;
  late final Logger _logger;

  ProjectViewModel() {
    _readAllProjectsUseCase = getIt<ReadAllProjectsUseCase>();
    _logger = getIt<Logger>();
    readAllProjects();
  }

  ProjectViewState _state = const ProjectViewState.initial();
  ProjectViewState get state => _state;

  Future<void> readAllProjects() async {
    _state = const ProjectViewState.loading();
    notifyListeners();

    _logger.d('Fetching projects via ViewModel');

    final result = await _readAllProjectsUseCase.execute(
      const ReadAllProjectsParam(),
    );

    result.when(
      success: (projects) {
        _logger.i('Successfully loaded ${projects.length} projects');
        _state = ProjectViewState.loaded(projects: projects);
      },
      failure: (failure) {
        _logger.e('Failed to load projects: $failure');
        _state = ProjectViewState.error(failure: failure);
      },
    );

    notifyListeners();
  }

  /// Retry loading projects after error
  Future<void> retry() => readAllProjects();
}
