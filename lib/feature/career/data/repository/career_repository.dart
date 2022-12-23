import 'package:portfolio/feature/career/data/data_source/career_github_data_source.dart';
import 'package:portfolio/feature/career/data/model/career_model.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/mapper/model_to_entity_mapper.dart';

class CareerRepository {
  final CareerGitHubDataSource _careerGitHubDataSource =
      CareerGitHubDataSource();

  Future<List<Career>> readAllCareers() async {
    final List<CareerModel> careerModels =
        await _careerGitHubDataSource.readAllCareers();
    final List<Career> careers =
        careerModels.map((careerModel) => careerModel.toEntity()).toList();
    return careers;
  }
}
