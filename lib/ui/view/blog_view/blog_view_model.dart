import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/feature/blog_post/domain/usecase/read_all_blog_posts_usecase.dart';
import 'package:portfolio/ui/view/blog_view/blog_view_state.dart';

class BlogViewModel extends ChangeNotifier {
  late final ReadAllBlogPostsUseCase _readAllBlogPostsUseCase;
  late final Logger _logger;

  BlogViewModel({
    ReadAllBlogPostsUseCase? readAllBlogPostsUseCase,
    Logger? logger,
  }) {
    _readAllBlogPostsUseCase = readAllBlogPostsUseCase ?? getIt<ReadAllBlogPostsUseCase>();
    _logger = logger ?? getIt<Logger>();
    readAllBlogPosts();
  }

  BlogViewState _state = const BlogViewState.initial();
  BlogViewState get state => _state;

  Future<void> readAllBlogPosts() async {
    _state = const BlogViewState.loading();
    notifyListeners();

    _logger.d('Fetching blog posts via ViewModel');

    final result = await _readAllBlogPostsUseCase.execute(
      const ReadAllBlogPostsParam(),
    );

    result.when(
      success: (blogPosts) {
        _logger.i('Successfully loaded ${blogPosts.length} blog posts');
        blogPosts.shuffle(); // Randomize display order
        _state = BlogViewState.loaded(blogPosts: blogPosts);
      },
      failure: (failure) {
        _logger.e('Failed to load blog posts: $failure');
        _state = BlogViewState.error(failure: failure);
      },
    );

    notifyListeners();
  }

  /// Retry loading blog posts after error
  Future<void> retry() => readAllBlogPosts();
}
