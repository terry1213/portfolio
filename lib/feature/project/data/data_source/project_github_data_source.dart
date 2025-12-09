import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/feature/project/data/model/project_model.dart';

class ProjectGithubDataSource {
  late final Dio _dio;
  late final Logger _logger;

  ProjectGithubDataSource() {
    _dio = getIt<Dio>();
    _logger = getIt<Logger>();
  }

  final String _readAllProjectsUrl = '${baseUrl}projects.json';

  Future<List<ProjectModel>> readAllProjects() async {
    try {
      _logger.d('Fetching projects from: $_readAllProjectsUrl');

      final response = await _dio.get(_readAllProjectsUrl);

      if (response.statusCode == 200) {
        try {
          final List<dynamic> jsonList = response.data is String
              ? json.decode(response.data as String) as List
              : response.data as List;
          final projects = jsonList
              .map((json) => ProjectModel.fromJson(json as Map<String, dynamic>))
              .toList();

          _logger.i('Successfully fetched ${projects.length} projects');
          return projects;
        } catch (e, stackTrace) {
          _logger.e('JSON parsing error', error: e, stackTrace: stackTrace);
          throw JsonParsingException(
            'Failed to parse projects: ${e.toString()}',
            stackTrace,
          );
        }
      } else if (response.statusCode == 404) {
        throw const DataNotFoundException('Projects not found');
      } else {
        throw NetworkException(
          'Failed to fetch projects: Status ${response.statusCode}',
        );
      }
    } on DioException catch (e, stackTrace) {
      _logger.e('Network error fetching projects', error: e, stackTrace: stackTrace);

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(
          'Request timed out while fetching projects',
          stackTrace,
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException(
          'Network connection error: ${e.message}',
          stackTrace,
        );
      } else {
        throw NetworkException(
          'Network error: ${e.message}',
          stackTrace,
        );
      }
    } on PortfolioException {
      rethrow;
    } catch (e, stackTrace) {
      _logger.e('Unexpected error fetching projects', error: e, stackTrace: stackTrace);
      throw NetworkException(
        'Unexpected error: ${e.toString()}',
        stackTrace,
      );
    }
  }
}
