import 'package:portfolio/feature/project/domain/entity/project.dart';

enum ProjectViewStateStatus {
  initial,
  loading,
  loaded,
}

class ProjectViewState {
  ProjectViewState._({
    required this.projectViewStateStatus,
    required this.projects,
  });

  ProjectViewState.initial()
      : this._(
          projectViewStateStatus: ProjectViewStateStatus.initial,
          projects: [],
        );

  final ProjectViewStateStatus projectViewStateStatus;
  final List<Project> projects;

  ProjectViewState whenLoading() => copyWith(
        projectViewStateStatus: ProjectViewStateStatus.loading,
      );

  ProjectViewState whenLoaded({required List<Project> projects}) => copyWith(
        projectViewStateStatus: ProjectViewStateStatus.loaded,
        projects: projects,
      );

  ProjectViewState copyWith({
    ProjectViewStateStatus? projectViewStateStatus,
    List<Project>? projects,
  }) =>
      ProjectViewState._(
        projectViewStateStatus:
            projectViewStateStatus ?? this.projectViewStateStatus,
        projects: projects ?? this.projects,
      );
}
