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
    required this.carouselCurrentIndex,
  });

  ProjectPageState.initial()
      : this._(
          projectPageStateStatus: ProjectPageStateStatus.initial,
          projects: [],
          carouselCurrentIndex: 0,
        );

  final ProjectPageStateStatus projectPageStateStatus;
  final List<Project> projects;
  final int carouselCurrentIndex;

  ProjectPageState whenLoading() => copyWith(
        blogPageStateStatus: ProjectPageStateStatus.loading,
      );

  ProjectPageState whenLoaded({required List<Project> projects}) => copyWith(
        blogPageStateStatus: ProjectPageStateStatus.loaded,
        projects: projects,
      );

  ProjectPageState whenCarouselMoved({required int carouselNextIndex}) =>
      copyWith(
        carouselCurrentIndex: carouselNextIndex,
      );

  ProjectPageState copyWith({
    ProjectPageStateStatus? blogPageStateStatus,
    List<Project>? projects,
    int? carouselCurrentIndex,
  }) =>
      ProjectPageState._(
        projectPageStateStatus:
            blogPageStateStatus ?? this.projectPageStateStatus,
        projects: projects ?? this.projects,
        carouselCurrentIndex: carouselCurrentIndex ?? this.carouselCurrentIndex,
      );
}
