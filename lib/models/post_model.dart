import 'package:portfolio/utils/url.dart';

class PostModel {
  const PostModel({
    required this.title,
    required this.body,
    required this.image,
    required this.urlKey1,
    required this.urlKey2,
  });

  final String title;
  final String body;
  final String image;
  final UrlKey urlKey1;
  final UrlKey urlKey2;
}