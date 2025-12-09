import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/event/domain/usecase/read_all_events_usecase.dart';
import 'package:portfolio/ui/view/about_view/about_view_state.dart';

class AboutViewModel extends ChangeNotifier {
  late final ReadAllEventsUseCase _readAllEventsUseCase;
  late final Logger _logger;

  AboutViewModel() {
    _readAllEventsUseCase = getIt<ReadAllEventsUseCase>();
    _logger = getIt<Logger>();
    readAllEvent();
  }

  AboutViewState _state = const AboutViewState.initial();
  AboutViewState get state => _state;

  /// Get education events from loaded state
  List<Event> get educations => _state.maybeWhen(
        loaded: (events) =>
            events.where((event) => event.type == EventType.education).toList(),
        orElse: () => [],
      );

  /// Get career events from loaded state
  List<Event> get careers => _state.maybeWhen(
        loaded: (events) =>
            events.where((event) => event.type == EventType.career).toList(),
        orElse: () => [],
      );

  /// Get project events from loaded state
  List<Event> get projects => _state.maybeWhen(
        loaded: (events) =>
            events.where((event) => event.type == EventType.project).toList(),
        orElse: () => [],
      );

  /// Get certificate events from loaded state
  List<Event> get certificates => _state.maybeWhen(
        loaded: (events) => events
            .where((event) => event.type == EventType.certificate)
            .toList(),
        orElse: () => [],
      );

  Future<void> readAllEvent() async {
    _state = const AboutViewState.loading();
    notifyListeners();

    _logger.d('Fetching events via ViewModel');

    final result = await _readAllEventsUseCase.execute(
      const ReadAllEventsParams(),
    );

    result.when(
      success: (events) {
        _logger.i('Successfully loaded ${events.length} events');
        _state = AboutViewState.loaded(events: events);
      },
      failure: (failure) {
        _logger.e('Failed to load events: $failure');
        _state = AboutViewState.error(failure: failure);
      },
    );

    notifyListeners();
  }

  /// Retry loading events after error
  Future<void> retry() => readAllEvent();
}
