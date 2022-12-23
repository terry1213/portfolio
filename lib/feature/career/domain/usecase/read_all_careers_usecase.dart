import 'package:portfolio/feature/career/data/repository/career_repository.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';

class ReadAllCareersUseCase {
  final CareerRepository careerRepository;

  const ReadAllCareersUseCase(this.careerRepository);

  Future<List<Career>> execute(ReadAllCareersParam readAllCareersParam) async {
    return await careerRepository.readAllCareers();
  }
}

class ReadAllCareersParam {
  const ReadAllCareersParam();
}
