import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';

class BlogPostGithubDataSource {
  late final Dio _dio;
  late final Logger _logger;

  BlogPostGithubDataSource() {
    _dio = getIt<Dio>();
    _logger = getIt<Logger>();
  }

  final String _readAllBlogPostsUrl = '${baseUrl}blog_posts.json';

  Future<List<BlogPostModel>> readAllBlogPosts() async {
    try {
      _logger.d('Fetching blog posts from: $_readAllBlogPostsUrl');

      final response = await _dio.get(_readAllBlogPostsUrl);

      if (response.statusCode == 200) {
        try {
          final List<dynamic> jsonList = response.data is String
              ? json.decode(response.data as String) as List
              : response.data as List;
          final blogPosts = jsonList
              .map((json) => BlogPostModel.fromJson(json as Map<String, dynamic>))
              .toList();

          _logger.i('Successfully fetched ${blogPosts.length} blog posts');
          return blogPosts;
        } catch (e, stackTrace) {
          _logger.e('JSON parsing error', error: e, stackTrace: stackTrace);
          throw JsonParsingException(
            'Failed to parse blog posts: ${e.toString()}',
            stackTrace,
          );
        }
      } else if (response.statusCode == 404) {
        throw const DataNotFoundException('Blog posts not found');
      } else {
        throw NetworkException(
          'Failed to fetch blog posts: Status ${response.statusCode}',
        );
      }
    } on DioException catch (e, stackTrace) {
      _logger.e('Network error fetching blog posts', error: e, stackTrace: stackTrace);

      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException(
          'Request timed out while fetching blog posts',
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
      _logger.e('Unexpected error fetching blog posts', error: e, stackTrace: stackTrace);
      throw NetworkException(
        'Unexpected error: ${e.toString()}',
        stackTrace,
      );
    }
  }
}
