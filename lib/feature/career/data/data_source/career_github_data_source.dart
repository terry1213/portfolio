import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/career/data/model/career_model.dart';

class CareerGitHubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllAppsUrl =
      'https://gist.githubusercontent.com/terry1213/43658decb89487721c7f9437705f468d/raw/08a7a9914b66374573048cb5df4422807e1abdaa/careers.json';

  Future<List<CareerModel>> readAllCareers() async {
    final Response response = await _networkManager.get(_readAllAppsUrl);
    final List<CareerModel> careerModels = (json.decode(response.body) as List)
        .map((map) => CareerModel.fromMap(map))
        .toList();
    return careerModels;
  }
}
