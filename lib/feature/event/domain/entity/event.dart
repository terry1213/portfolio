import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

enum EventType {
  education,
  career,
  project,
  certificate,
}

@freezed
class Event with _$Event {
  const factory Event({
    required EventType type,
    required String period,
    required String detail,
  }) = _Event;
}
