import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/career/data/model/career_model.dart';

class CareerGitHubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllAppsUrl = '${baseUrl}careers.json';

  Future<List<CareerModel>> readAllCareers() async {
    final Response response = await _networkManager.get(_readAllAppsUrl);
    final List<CareerModel> careerModels = (json.decode(response.body) as List)
        .map((map) => CareerModel.fromMap(map))
        .toList();
    return careerModels;
  }
}
