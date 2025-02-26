import 'dart:convert';

import 'package:http/http.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/network.dart';
import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';

class BlogPostGithubDataSource {
  final NetworkManager _networkManager = NetworkManager();

  final String _readAllBlogPostsUrl = '${baseUrl}blog_posts.json';

  Future<List<BlogPostModel>> readAllBlogPosts() async {
    final Response response = await _networkManager.get(_readAllBlogPostsUrl);
    final List<BlogPostModel> blogPostModels =
        (json.decode(response.body) as List)
            .map((map) => BlogPostModel.fromMap(map))
            .toList();
    return blogPostModels;
  }
}
