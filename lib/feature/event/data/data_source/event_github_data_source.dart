import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/event/data/model/event_model.dart';

class EventGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllEventsUrl =
      'https://gist.githubusercontent.com/terry1213/43658decb89487721c7f9437705f468d/raw/08a7a9914b66374573048cb5df4422807e1abdaa/events.json';

  Future<List<EventModel>> readAllEvents() async {
    final Response response = await _networkManager.get(_readAllEventsUrl);
    final List<EventModel> eventModels = (json.decode(response.body) as List)
        .map((map) => EventModel.fromMap(map))
        .toList();
    return eventModels;
  }
}
