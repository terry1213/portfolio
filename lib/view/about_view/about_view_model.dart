import 'package:flutter/material.dart';
import 'package:portfolio/feature/event/data/repository/event_repository.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/event/domain/usecase/read_all_events_usecase.dart';
import 'package:portfolio/view/about_view/about_view_state.dart';

class AboutViewModel extends ChangeNotifier {
  AboutViewModel() {
    readAllEvent();
  }

  final EventRepository _eventRepository = EventRepository();

  AboutViewState aboutViewState = AboutViewState.initial();

  List<Event> get educations => aboutViewState.events
      .where((event) => event.type == EventType.education)
      .toList();
  List<Event> get careers => aboutViewState.events
      .where((event) => event.type == EventType.career)
      .toList();
  List<Event> get projects => aboutViewState.events
      .where((event) => event.type == EventType.project)
      .toList();
  List<Event> get certificates => aboutViewState.events
      .where((event) => event.type == EventType.certificate)
      .toList();

  Future<void> readAllEvent() async {
    aboutViewState = aboutViewState.whenLoading();
    final List<Event> events = await ReadAllEventsUseCase(_eventRepository)
        .execute(const ReadAllEventsParams());
    aboutViewState = aboutViewState.whenLoaded(events: events);
    notifyListeners();
  }
}
