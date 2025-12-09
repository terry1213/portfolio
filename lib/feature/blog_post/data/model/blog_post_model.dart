import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_post_model.freezed.dart';
part 'blog_post_model.g.dart';

@freezed
class BlogPostModel with _$BlogPostModel {
  const factory BlogPostModel({
    required String title,
    required String detail,
    required String image,
    required String url1Text,
    required String url1,
    required String url2Text,
    required String url2,
  }) = _BlogPostModel;

  factory BlogPostModel.fromJson(Map<String, dynamic> json) =>
      _$BlogPostModelFromJson(json);
}
