import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'blog_post.freezed.dart';

@freezed
class BlogPost with _$BlogPost {
  const BlogPost._();

  const factory BlogPost({
    required String title,
    required String detail,
    required String image,
    required String url1Text,
    required String url1,
    required String url2Text,
    required String url2,
  }) = _BlogPost;

  Future<void> openFirstUrl() async => await launchUrlString(url1);

  Future<void> openSecondUrl() async => await launchUrlString(url2);
}
