import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';

part 'career_view_state.freezed.dart';

@freezed
class CareerViewState with _$CareerViewState {
  const factory CareerViewState.initial() = _Initial;

  const factory CareerViewState.loading() = _Loading;

  const factory CareerViewState.loaded({
    required List<Career> careers,
  }) = _Loaded;

  const factory CareerViewState.error({
    required Failure failure,
  }) = _Error;
}
