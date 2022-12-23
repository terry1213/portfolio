import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';

class BlogPostGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllBlogPostsUrl =
      'https://gist.githubusercontent.com/terry1213/43658decb89487721c7f9437705f468d/raw/08a7a9914b66374573048cb5df4422807e1abdaa/blog_posts.json';

  Future<List<BlogPostModel>> readAllBlogPosts() async {
    final Response response = await _networkManager.get(_readAllBlogPostsUrl);
    final List<BlogPostModel> blogPostModels =
        (json.decode(response.body) as List)
            .map((map) => BlogPostModel.fromMap(map))
            .toList();
    return blogPostModels;
  }
}
