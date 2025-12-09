import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/feature/event/data/data_source/event_github_data_source.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/event/mapper/model_to_entity_mapper.dart';

class EventRepository {
  late final EventGithubDataSource _eventGithubDataSource;

  EventRepository() {
    _eventGithubDataSource = getIt<EventGithubDataSource>();
  }

  Future<Result<List<Event>>> readAllEvents() async {
    try {
      final eventModels = await _eventGithubDataSource.readAllEvents();
      final events =
          eventModels.map((eventModel) => eventModel.toEntity()).toList();
      return Result.success(events);
    } on NetworkException catch (e) {
      return Result.failure(Failure.network(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on JsonParsingException catch (e) {
      return Result.failure(Failure.parsing(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on DataNotFoundException catch (e) {
      return Result.failure(Failure.notFound(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      return Result.failure(Failure.timeout(
        message: e.message,
      ));
    } catch (e, stackTrace) {
      return Result.failure(Failure.unknown(
        message: e.toString(),
        details: stackTrace.toString(),
      ));
    }
  }
}
