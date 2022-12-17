import 'package:portfolio/config/url.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BlogPost {
  const BlogPost({
    required this.title,
    required this.detail,
    required this.image,
    required this.urlKey1,
    required this.urlKey2,
  });

  final String title;
  final String detail;
  final String image;
  final UrlKey urlKey1;
  final UrlKey urlKey2;

  Future<void> openFirstUrl() async => await canLaunchUrlString(urls[urlKey1]!)
      ? await launchUrlString(urls[urlKey1]!)
      : throw 'Could not launch ${urls[urlKey1]}';

  Future<void> openSecondUrl() async => await canLaunchUrlString(urls[urlKey2]!)
      ? await launchUrlString(urls[urlKey2]!)
      : throw 'Could not launch ${urls[urlKey2]}';
}
