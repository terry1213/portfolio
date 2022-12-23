import 'package:portfolio/feature/event/data/model/event_model.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';

extension EventModelExt on EventModel {
  Event toEntity() => Event(
        type: EventType.values.byName(type),
        period: period,
        detail: detail,
      );
}
