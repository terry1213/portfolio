import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/event/data/model/event_model.dart';

class EventGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllEventsUrl = '${baseUrl}events.json';

  Future<List<EventModel>> readAllEvents() async {
    final Response response = await _networkManager.get(_readAllEventsUrl);
    final List<EventModel> eventModels = (json.decode(response.body) as List)
        .map((map) => EventModel.fromMap(map))
        .toList();
    return eventModels;
  }
}
