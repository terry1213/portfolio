import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';

class ReadAllBlogPostsUseCase {
  final BlogPostRepository blogPostRepository;

  const ReadAllBlogPostsUseCase(this.blogPostRepository);

  Future<List<BlogPost>> execute(
      ReadAllBlogPostsParam readAllBlogPostsParam) async {
    return await blogPostRepository.readAllBlogPosts();
  }
}

class ReadAllBlogPostsParam {
  const ReadAllBlogPostsParam();
}
