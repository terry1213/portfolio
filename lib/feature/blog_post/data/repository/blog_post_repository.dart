import 'package:portfolio/feature/blog_post/data/data_source/blog_post_github_data_source.dart';
import 'package:portfolio/feature/blog_post/data/model/blog_post_model.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/feature/blog_post/mapper/model_to_entity_mapper.dart';

class BlogPostRepository {
  final BlogPostGithubDataSource _blogPostGithubDataSource =
      BlogPostGithubDataSource();

  Future<List<BlogPost>> readAllBlogPosts() async {
    final List<BlogPostModel> blogPostModels =
        await _blogPostGithubDataSource.readAllBlogPosts();
    final List<BlogPost> blogPosts = blogPostModels
        .map((blogPostModel) => blogPostModel.toEntity())
        .toList();
    return blogPosts;
  }
}
