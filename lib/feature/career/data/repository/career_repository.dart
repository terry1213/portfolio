import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/feature/career/data/data_source/career_github_data_source.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/mapper/model_to_entity_mapper.dart';

class CareerRepository {
  late final CareerGithubDataSource _careerGithubDataSource;

  CareerRepository() {
    _careerGithubDataSource = getIt<CareerGithubDataSource>();
  }

  Future<Result<List<Career>>> readAllCareers() async {
    try {
      final careerModels = await _careerGithubDataSource.readAllCareers();
      final careers =
          careerModels.map((careerModel) => careerModel.toEntity()).toList();
      return Result.success(careers);
    } on NetworkException catch (e) {
      return Result.failure(Failure.network(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on JsonParsingException catch (e) {
      return Result.failure(Failure.parsing(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on DataNotFoundException catch (e) {
      return Result.failure(Failure.notFound(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      return Result.failure(Failure.timeout(
        message: e.message,
      ));
    } catch (e, stackTrace) {
      return Result.failure(Failure.unknown(
        message: e.toString(),
        details: stackTrace.toString(),
      ));
    }
  }
}
