import 'package:portfolio/feature/event/data/data_source/event_github_data_source.dart';
import 'package:portfolio/feature/event/data/model/event_model.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/event/mapper/model_to_entity_mapper.dart';

class EventRepository {
  final EventGithubDataSource _eventGithubDataSource = EventGithubDataSource();

  Future<List<Event>> readAllEvents() async {
    final List<EventModel> eventModels =
        await _eventGithubDataSource.readAllEvents();
    final List<Event> events =
        eventModels.map((eventModel) => eventModel.toEntity()).toList();
    return events;
  }
}
