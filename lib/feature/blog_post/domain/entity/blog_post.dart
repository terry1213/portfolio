import 'package:url_launcher/url_launcher_string.dart';

class BlogPost {
  const BlogPost({
    required this.title,
    required this.detail,
    required this.image,
    required this.url1Text,
    required this.url1,
    required this.url2Text,
    required this.url2,
  });

  final String title;
  final String detail;
  final String image;
  final String url1Text;
  final String url1;
  final String url2Text;
  final String url2;

  Future<void> openFirstUrl() async => await launchUrlString(url1);

  Future<void> openSecondUrl() async => await launchUrlString(url2);
}
