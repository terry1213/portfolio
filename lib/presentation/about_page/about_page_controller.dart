import 'package:flutter/material.dart';
import 'package:portfolio/feature/event/data/repository/event_repository.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/event/domain/usecase/read_all_events_usecase.dart';
import 'package:portfolio/presentation/about_page/about_page_state.dart';

class AboutPageController extends ChangeNotifier {
  AboutPageController() {
    readAllEvent();
  }

  final EventRepository _eventRepository = EventRepository();

  AboutPageState aboutPageState = AboutPageState.initial();

  List<Event> get educations => aboutPageState.events
      .where((event) => event.type == EventType.education)
      .toList();
  List<Event> get careers => aboutPageState.events
      .where((event) => event.type == EventType.career)
      .toList();
  List<Event> get projects => aboutPageState.events
      .where((event) => event.type == EventType.project)
      .toList();
  List<Event> get certificates => aboutPageState.events
      .where((event) => event.type == EventType.certificate)
      .toList();

  Future<void> readAllEvent() async {
    aboutPageState = aboutPageState.whenLoading();
    final List<Event> events = await ReadAllEventsUseCase(_eventRepository)
        .execute(const ReadAllEventsParams());
    aboutPageState = aboutPageState.whenLoaded(events: events);
    notifyListeners();
  }
}
