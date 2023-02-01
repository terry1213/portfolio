import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';

enum BlogPageStateStatus {
  initial,
  loading,
  loaded,
}

class BlogPageState {
  BlogPageState._({
    required this.blogPageStateStatus,
    required this.blogPosts,
  });

  BlogPageState.initial()
      : this._(
          blogPageStateStatus: BlogPageStateStatus.initial,
          blogPosts: [],
        );

  final BlogPageStateStatus blogPageStateStatus;
  final List<BlogPost> blogPosts;

  BlogPageState whenLoading() => copyWith(
        blogPageStateStatus: BlogPageStateStatus.loading,
      );

  BlogPageState whenLoaded({required List<BlogPost> blogPosts}) => copyWith(
        blogPageStateStatus: BlogPageStateStatus.loaded,
        blogPosts: blogPosts,
      );

  BlogPageState copyWith({
    BlogPageStateStatus? blogPageStateStatus,
    List<BlogPost>? blogPosts,
  }) =>
      BlogPageState._(
        blogPageStateStatus: blogPageStateStatus ?? this.blogPageStateStatus,
        blogPosts: blogPosts ?? this.blogPosts,
      );
}
