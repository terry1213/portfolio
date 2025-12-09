import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';

part 'blog_view_state.freezed.dart';

@freezed
class BlogViewState with _$BlogViewState {
  const factory BlogViewState.initial() = _Initial;

  const factory BlogViewState.loading() = _Loading;

  const factory BlogViewState.loaded({
    required List<BlogPost> blogPosts,
  }) = _Loaded;

  const factory BlogViewState.error({
    required Failure failure,
  }) = _Error;
}
