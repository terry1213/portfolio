import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';

part 'project_view_state.freezed.dart';

@freezed
class ProjectViewState with _$ProjectViewState {
  const factory ProjectViewState.initial() = _Initial;

  const factory ProjectViewState.loading() = _Loading;

  const factory ProjectViewState.loaded({
    required List<Project> projects,
  }) = _Loaded;

  const factory ProjectViewState.error({
    required Failure failure,
  }) = _Error;
}
