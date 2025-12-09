import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/feature/career/data/model/career_model.dart';

class CareerGithubDataSource {
  late final Dio _dio;
  late final Logger _logger;

  CareerGithubDataSource() {
    _dio = getIt<Dio>();
    _logger = getIt<Logger>();
  }

  final String _readAllAppsUrl = '${baseUrl}careers.json';

  Future<List<CareerModel>> readAllCareers() async {
    try {
      _logger.d('Fetching careers from: $_readAllAppsUrl');

      final response = await _dio.get(_readAllAppsUrl);

      if (response.statusCode == 200) {
        try {
          final List<dynamic> jsonList = response.data is String
              ? json.decode(response.data as String) as List
              : response.data as List;
          final careers = jsonList
              .map((json) => CareerModel.fromJson(json as Map<String, dynamic>))
              .toList();

          _logger.i('Successfully fetched ${careers.length} careers');
          return careers;
        } catch (e, stackTrace) {
          _logger.e('JSON parsing error', error: e, stackTrace: stackTrace);
          throw JsonParsingException(
            'Failed to parse careers: ${e.toString()}',
            stackTrace,
          );
        }
      } else if (response.statusCode == 404) {
        throw const DataNotFoundException('Careers not found');
      } else {
        throw NetworkException(
          'Failed to fetch careers: Status ${response.statusCode}',
        );
      }
    } on DioException catch (e, stackTrace) {
      _logger.e('Network error fetching careers', error: e, stackTrace: stackTrace);

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(
          'Request timed out while fetching careers',
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
      _logger.e('Unexpected error fetching careers', error: e, stackTrace: stackTrace);
      throw NetworkException(
        'Unexpected error: ${e.toString()}',
        stackTrace,
      );
    }
  }
}
