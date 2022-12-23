import 'package:flutter/material.dart';
import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/feature/blog_post/domain/usecase/read_all_blog_posts_usecase.dart';
import 'package:portfolio/presentation/blog_page/blog_page_state.dart';

class BlogPageController extends ChangeNotifier {
  BlogPageController() {
    readAllBlogPosts();
  }

  final BlogPostRepository _blogPostRepository = BlogPostRepository();

  BlogPageState blogPageState = BlogPageState.initial();

  List<BlogPost> get blogPosts => blogPageState.blogPosts;
  int get carouselCurrentIndex => blogPageState.carouselCurrentIndex;

  Future<void> readAllBlogPosts() async {
    blogPageState = blogPageState.whenLoading();
    final List<BlogPost> blogPosts =
        await ReadAllBlogPostsUseCase(_blogPostRepository)
            .execute(const ReadAllBlogPostsParam());
    blogPageState = blogPageState.whenLoaded(blogPosts: blogPosts);
    notifyListeners();
  }

  void changeCurrentIndex(int nextIndex) {
    blogPageState =
        blogPageState.whenCarouselMoved(carouselNextIndex: nextIndex);
    notifyListeners();
  }
}
