import 'package:portfolio/feature/event/domain/entity/event.dart';

enum AboutViewStateStatus {
  initial,
  loading,
  loaded,
}

class AboutViewState {
  const AboutViewState._({
    required this.aboutViewStateStatus,
    required this.events,
  });

  AboutViewState.initial()
      : this._(
          aboutViewStateStatus: AboutViewStateStatus.initial,
          events: [],
        );

  final AboutViewStateStatus aboutViewStateStatus;
  final List<Event> events;

  AboutViewState whenLoading() => copyWith(
        aboutViewStateStatus: AboutViewStateStatus.loading,
        events: [],
      );

  AboutViewState whenLoaded({required List<Event> events}) => copyWith(
        aboutViewStateStatus: AboutViewStateStatus.loaded,
        events: events,
      );

  AboutViewState copyWith({
    AboutViewStateStatus? aboutViewStateStatus,
    List<Event>? events,
  }) =>
      AboutViewState._(
        aboutViewStateStatus: aboutViewStateStatus ?? this.aboutViewStateStatus,
        events: events ?? this.events,
      );
}
