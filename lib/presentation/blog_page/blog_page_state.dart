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
    required this.carouselCurrentIndex,
  });

  BlogPageState.initial()
      : this._(
          blogPageStateStatus: BlogPageStateStatus.initial,
          blogPosts: [],
          carouselCurrentIndex: 0,
        );

  final BlogPageStateStatus blogPageStateStatus;
  final List<BlogPost> blogPosts;
  final int carouselCurrentIndex;

  BlogPageState whenLoading() => copyWith(
        blogPageStateStatus: BlogPageStateStatus.loading,
      );

  BlogPageState whenLoaded({required List<BlogPost> blogPosts}) => copyWith(
        blogPageStateStatus: BlogPageStateStatus.loaded,
        blogPosts: blogPosts,
      );

  BlogPageState whenCarouselMoved({required int carouselNextIndex}) => copyWith(
        carouselCurrentIndex: carouselNextIndex,
      );

  BlogPageState copyWith({
    BlogPageStateStatus? blogPageStateStatus,
    List<BlogPost>? blogPosts,
    int? carouselCurrentIndex,
  }) =>
      BlogPageState._(
        blogPageStateStatus: blogPageStateStatus ?? this.blogPageStateStatus,
        blogPosts: blogPosts ?? this.blogPosts,
        carouselCurrentIndex: carouselCurrentIndex ?? this.carouselCurrentIndex,
      );
}
