import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/feature/event/data/model/event_model.dart';

class EventGithubDataSource {
  late final Dio _dio;
  late final Logger _logger;

  EventGithubDataSource() {
    _dio = getIt<Dio>();
    _logger = getIt<Logger>();
  }

  final String _readAllEventsUrl = '${baseUrl}events.json';

  Future<List<EventModel>> readAllEvents() async {
    try {
      _logger.d('Fetching events from: $_readAllEventsUrl');

      final response = await _dio.get(_readAllEventsUrl);

      if (response.statusCode == 200) {
        try {
          final List<dynamic> jsonList = response.data is String
              ? json.decode(response.data as String) as List
              : response.data as List;
          final events = jsonList
              .map((json) => EventModel.fromJson(json as Map<String, dynamic>))
              .toList();

          _logger.i('Successfully fetched ${events.length} events');
          return events;
        } catch (e, stackTrace) {
          _logger.e('JSON parsing error', error: e, stackTrace: stackTrace);
          throw JsonParsingException(
            'Failed to parse events: ${e.toString()}',
            stackTrace,
          );
        }
      } else if (response.statusCode == 404) {
        throw const DataNotFoundException('Events not found');
      } else {
        throw NetworkException(
          'Failed to fetch events: Status ${response.statusCode}',
        );
      }
    } on DioException catch (e, stackTrace) {
      _logger.e('Network error fetching events', error: e, stackTrace: stackTrace);

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(
          'Request timed out while fetching events',
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
      _logger.e('Unexpected error fetching events', error: e, stackTrace: stackTrace);
      throw NetworkException(
        'Unexpected error: ${e.toString()}',
        stackTrace,
      );
    }
  }
}
