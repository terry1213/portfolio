import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/skill/data/model/skill_model.dart';

class SkillGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllSkillsUrl =
      'https://gist.githubusercontent.com/terry1213/43658decb89487721c7f9437705f468d/raw/skills.json';

  Future<List<SkillModel>> readAllSkills() async {
    final Response response = await _networkManager.get(_readAllSkillsUrl);
    final List<SkillModel> skillModels = (json.decode(response.body) as List)
        .map((map) => SkillModel.fromMap(map))
        .toList();
    return skillModels;
  }
}
