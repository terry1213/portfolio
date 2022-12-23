import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';

extension BlogPostModelExt on BlogPostModel {
  BlogPost toEntity() => BlogPost(
      title: title,
      detail: detail,
      image: image,
      url1Text: url1Text,
      url1: url1,
      url2Text: url2Text,
      url2: url2);
}
