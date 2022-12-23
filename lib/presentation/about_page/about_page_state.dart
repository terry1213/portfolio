import 'package:portfolio/feature/event/domain/entity/event.dart';

enum AboutPageStateStatus {
  initial,
  loading,
  loaded,
}

class AboutPageState {
  const AboutPageState._({
    required this.aboutPageStateStatus,
    required this.events,
  });

  AboutPageState.initial()
      : this._(
          aboutPageStateStatus: AboutPageStateStatus.initial,
          events: [],
        );

  final AboutPageStateStatus aboutPageStateStatus;
  final List<Event> events;

  AboutPageState whenLoading() => copyWith(
        aboutPageStateStatus: AboutPageStateStatus.loading,
        events: [],
      );

  AboutPageState whenLoaded({required List<Event> events}) => copyWith(
        aboutPageStateStatus: AboutPageStateStatus.loaded,
        events: events,
      );

  AboutPageState copyWith({
    AboutPageStateStatus? aboutPageStateStatus,
    List<Event>? events,
  }) =>
      AboutPageState._(
        aboutPageStateStatus: aboutPageStateStatus ?? this.aboutPageStateStatus,
        events: events ?? this.events,
      );
}
