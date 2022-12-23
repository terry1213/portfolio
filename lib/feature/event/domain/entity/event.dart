enum EventType {
  education,
  career,
  project,
  certificate,
}

class Event {
  const Event({
    required this.type,
    required this.period,
    required this.detail,
  });

  final EventType type;
  final String period;
  final String detail;
}
