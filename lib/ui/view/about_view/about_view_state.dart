import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';

part 'about_view_state.freezed.dart';

@freezed
class AboutViewState with _$AboutViewState {
  const factory AboutViewState.initial() = _Initial;

  const factory AboutViewState.loading() = _Loading;

  const factory AboutViewState.loaded({
    required List<Event> events,
  }) = _Loaded;

  const factory AboutViewState.error({
    required Failure failure,
  }) = _Error;
}
