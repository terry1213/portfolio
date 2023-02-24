import 'package:flutter/material.dart';
import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/feature/blog_post/domain/usecase/read_all_blog_posts_usecase.dart';
import 'package:portfolio/presentation/blog_view/blog_view_state.dart';

class BlogViewModel extends ChangeNotifier {
  BlogViewModel() {
    readAllBlogPosts();
  }

  final BlogPostRepository _blogPostRepository = BlogPostRepository();

  BlogViewState blogViewState = BlogViewState.initial();

  List<BlogPost> get blogPosts => blogViewState.blogPosts;

  Future<void> readAllBlogPosts() async {
    blogViewState = blogViewState.whenLoading();
    final List<BlogPost> blogPosts =
        await ReadAllBlogPostsUseCase(_blogPostRepository)
            .execute(const ReadAllBlogPostsParam());
    blogPosts.shuffle();
    blogViewState = blogViewState.whenLoaded(blogPosts: blogPosts);
    notifyListeners();
  }
}
