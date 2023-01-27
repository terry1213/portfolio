import 'package:portfolio/feature/project/domain/entity/project.dart';

enum ProjectPageStateStatus {
  initial,
  loading,
  loaded,
}

class ProjectPageState {
  ProjectPageState._({
    required this.projectPageStateStatus,
    required this.projects,
  });

  ProjectPageState.initial()
      : this._(
          projectPageStateStatus: ProjectPageStateStatus.initial,
          projects: [],
        );

  final ProjectPageStateStatus projectPageStateStatus;
  final List<Project> projects;

  ProjectPageState whenLoading() => copyWith(
        blogPageStateStatus: ProjectPageStateStatus.loading,
      );

  ProjectPageState whenLoaded({required List<Project> projects}) => copyWith(
        blogPageStateStatus: ProjectPageStateStatus.loaded,
        projects: projects,
      );

  ProjectPageState copyWith({
    ProjectPageStateStatus? blogPageStateStatus,
    List<Project>? projects,
  }) =>
      ProjectPageState._(
        projectPageStateStatus:
            blogPageStateStatus ?? this.projectPageStateStatus,
        projects: projects ?? this.projects,
      );
}
