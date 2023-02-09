import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';

enum BlogViewStateStatus {
  initial,
  loading,
  loaded,
}

class BlogViewState {
  BlogViewState._({
    required this.blogViewStateStatus,
    required this.blogPosts,
  });

  BlogViewState.initial()
      : this._(
          blogViewStateStatus: BlogViewStateStatus.initial,
          blogPosts: [],
        );

  final BlogViewStateStatus blogViewStateStatus;
  final List<BlogPost> blogPosts;

  BlogViewState whenLoading() => copyWith(
        blogViewStateStatus: BlogViewStateStatus.loading,
      );

  BlogViewState whenLoaded({required List<BlogPost> blogPosts}) => copyWith(
        blogViewStateStatus: BlogViewStateStatus.loaded,
        blogPosts: blogPosts,
      );

  BlogViewState copyWith({
    BlogViewStateStatus? blogViewStateStatus,
    List<BlogPost>? blogPosts,
  }) =>
      BlogViewState._(
        blogViewStateStatus: blogViewStateStatus ?? this.blogViewStateStatus,
        blogPosts: blogPosts ?? this.blogPosts,
      );
}
