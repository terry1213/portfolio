import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/feature/event/data/repository/event_repository.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';

class ReadAllEventsUseCase {
  final EventRepository eventRepository;

  const ReadAllEventsUseCase(this.eventRepository);

  Future<Result<List<Event>>> execute(ReadAllEventsParams readAllEventsParams) async {
    return await eventRepository.readAllEvents();
  }
}

class ReadAllEventsParams {
  const ReadAllEventsParams();
}
