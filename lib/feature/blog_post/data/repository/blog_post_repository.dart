import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/core/error/exceptions.dart';
import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/core/utils/result.dart';
import 'package:portfolio/feature/blog_post/data/data_source/blog_post_github_data_source.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/feature/blog_post/mapper/model_to_entity_mapper.dart';

class BlogPostRepository {
  late final BlogPostGithubDataSource _blogPostGithubDataSource;

  BlogPostRepository({
    BlogPostGithubDataSource? blogPostGithubDataSource,
  }) {
    _blogPostGithubDataSource = blogPostGithubDataSource ?? getIt<BlogPostGithubDataSource>();
  }

  Future<Result<List<BlogPost>>> readAllBlogPosts() async {
    try {
      final blogPostModels = await _blogPostGithubDataSource.readAllBlogPosts();
      final blogPosts = blogPostModels
          .map((blogPostModel) => blogPostModel.toEntity())
          .toList();
      return Result.success(blogPosts);
    } on NetworkException catch (e) {
      return Result.failure(Failure.network(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on JsonParsingException catch (e) {
      return Result.failure(Failure.parsing(
        message: e.message,
        details: e.stackTrace?.toString(),
      ));
    } on DataNotFoundException catch (e) {
      return Result.failure(Failure.notFound(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      return Result.failure(Failure.timeout(
        message: e.message,
      ));
    } catch (e, stackTrace) {
      return Result.failure(Failure.unknown(
        message: e.toString(),
        details: stackTrace.toString(),
      ));
    }
  }
}
