class EventModel {
  const EventModel({
    required this.type,
    required this.period,
    required this.detail,
  });

  final String type;
  final String period;
  final String detail;

  factory EventModel.fromMap(Map map) => EventModel(
        type: map['type'],
        period: map['period'],
        detail: map['detail'],
      );
}
