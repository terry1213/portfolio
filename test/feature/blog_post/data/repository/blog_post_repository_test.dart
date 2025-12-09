import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/feature/blog_post/data/data_source/blog_post_github_data_source.dart';
import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';
import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';

@GenerateMocks([BlogPostGithubDataSource])
import 'blog_post_repository_test.mocks.dart';

void main() {
  late BlogPostRepository repository;
  late MockBlogPostGithubDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockBlogPostGithubDataSource();
    repository = BlogPostRepository(
      blogPostGithubDataSource: mockDataSource,
    );
  });

  group('BlogPostRepository', () {
    const testModel = BlogPostModel(
      title: 'Test',
      detail: 'Detail',
      image: 'image.jpg',
      url1Text: 'URL1',
      url1: 'url1',
      url2Text: 'URL2',
      url2: 'url2',
    );

    test('should return success with blog posts when data source succeeds',
        () async {
      // Arrange
      when(mockDataSource.readAllBlogPosts())
          .thenAnswer((_) async => [testModel]);

      // Act
      final result = await repository.readAllBlogPosts();

      // Assert
      result.when(
        success: (blogPosts) {
          expect(blogPosts.length, 1);
          expect(blogPosts.first.title, 'Test');
        },
        failure: (_) => fail('Expected success'),
      );
    });

    test('should return network failure when NetworkException is thrown',
        () async {
      // Arrange
      when(mockDataSource.readAllBlogPosts())
          .thenThrow(const NetworkException('Network error'));

      // Act
      final result = await repository.readAllBlogPosts();

      // Assert
      result.when(
        success: (_) => fail('Expected failure'),
        failure: (failure) {
          failure.maybeWhen(
            network: (message, details) {
              expect(message, 'Network error');
            },
            orElse: () => fail('Expected network failure'),
          );
        },
      );
    });

    test('should return parsing failure when JsonParsingException is thrown',
        () async {
      // Arrange
      when(mockDataSource.readAllBlogPosts())
          .thenThrow(const JsonParsingException('Parsing error'));

      // Act
      final result = await repository.readAllBlogPosts();

      // Assert
      result.when(
        success: (_) => fail('Expected failure'),
        failure: (failure) {
          failure.maybeWhen(
            parsing: (message, details) {
              expect(message, 'Parsing error');
            },
            orElse: () => fail('Expected parsing failure'),
          );
        },
      );
    });

    test('should return timeout failure when TimeoutException is thrown',
        () async {
      // Arrange
      when(mockDataSource.readAllBlogPosts())
          .thenThrow(const TimeoutException('Timeout'));

      // Act
      final result = await repository.readAllBlogPosts();

      // Assert
      result.when(
        success: (_) => fail('Expected failure'),
        failure: (failure) {
          failure.maybeWhen(
            timeout: (message) {
              expect(message, 'Timeout');
            },
            orElse: () => fail('Expected timeout failure'),
          );
        },
      );
    });
  });
}
