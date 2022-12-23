class BlogPostModel {
  const BlogPostModel({
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

  factory BlogPostModel.fromMap(Map map) => BlogPostModel(
        title: map['title'],
        detail: map['detail'],
        image: map['image'],
        url1Text: map['url1Text'],
        url1: map['url1'],
        url2Text: map['url2Text'],
        url2: map['url2'],
      );
}
