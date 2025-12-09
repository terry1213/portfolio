import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/ui/view/blog_view/blog_view_model.dart';

import '../../../helpers/mock_data.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late BlogViewModel viewModel;
  late MockReadAllBlogPostsUseCase mockUseCase;
  late Logger logger;

  setUp(() {
    mockUseCase = MockReadAllBlogPostsUseCase();
    logger = Logger(printer: PrettyPrinter(), level: Level.off); // Silent logger for tests
  });

  tearDown(() {
    viewModel.dispose();
  });

  group('BlogViewModel', () {
    test('should load blog posts successfully', () async {
      // Arrange
      when(mockUseCase.execute(any))
          .thenAnswer((_) async => Result.success(MockData.blogPosts));

      // Act
      viewModel = BlogViewModel(
        readAllBlogPostsUseCase: mockUseCase,
        logger: logger,
      );
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      viewModel.state.maybeWhen(
        loaded: (blogPosts) {
          expect(blogPosts.length, 2);
          // Check that both posts are present (order doesn't matter due to shuffle)
          final titles = blogPosts.map((p) => p.title).toList();
          expect(titles, contains('Test Blog Post 1'));
          expect(titles, contains('Test Blog Post 2'));
        },
        orElse: () => fail('Expected loaded state'),
      );
    });

    test('should handle error when data fetch fails', () async {
      // Arrange
      when(mockUseCase.execute(any))
          .thenAnswer((_) async => Result.failure(MockData.networkFailure));

      // Act
      viewModel = BlogViewModel(
        readAllBlogPostsUseCase: mockUseCase,
        logger: logger,
      );
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      viewModel.state.maybeWhen(
        error: (failure) {
          expect(failure, MockData.networkFailure);
        },
        orElse: () => fail('Expected error state'),
      );
    });

    test('retry should reload data successfully', () async {
      // Arrange
      when(mockUseCase.execute(any))
          .thenAnswer((_) async => Result.success(MockData.blogPosts));

      viewModel = BlogViewModel(
        readAllBlogPostsUseCase: mockUseCase,
        logger: logger,
      );
      await Future.delayed(const Duration(milliseconds: 100));

      // Act
      await viewModel.retry();
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      verify(mockUseCase.execute(any)).called(2); // Initial + retry
      viewModel.state.maybeWhen(
        loaded: (blogPosts) {
          expect(blogPosts.length, 2);
          final titles = blogPosts.map((p) => p.title).toList();
          expect(titles, contains('Test Blog Post 1'));
          expect(titles, contains('Test Blog Post 2'));
        },
        orElse: () => fail('Expected loaded state after retry'),
      );
    });
  });
}
