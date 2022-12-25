import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/project/data/model/project_model.dart';

class ProjectGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllProjectsUrl =
      'https://gist.githubusercontent.com/terry1213/43658decb89487721c7f9437705f468d/raw/projects.json';

  Future<List<ProjectModel>> readAllProjects() async {
    final Response response = await _networkManager.get(_readAllProjectsUrl);
    final List<ProjectModel> projectModels =
        (json.decode(response.body) as List)
            .map((map) => ProjectModel.fromMap(map))
            .toList();
    return projectModels;
  }
}
