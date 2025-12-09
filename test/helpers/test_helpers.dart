import 'package:mockito/annotations.dart';
import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';
import 'package:portfolio/feature/blog_post/domain/usecase/read_all_blog_posts_usecase.dart';
import 'package:portfolio/feature/career/data/repository/career_repository.dart';
import 'package:portfolio/feature/career/domain/usecase/read_all_careers_usecase.dart';
import 'package:portfolio/feature/event/data/repository/event_repository.dart';
import 'package:portfolio/feature/event/domain/usecase/read_all_events_usecase.dart';
import 'package:portfolio/feature/project/data/repository/project_repository.dart';
import 'package:portfolio/feature/project/domain/usecase/read_all_projects_usecase.dart';

// Generate mocks for repositories and use cases
@GenerateMocks([
  BlogPostRepository,
  ReadAllBlogPostsUseCase,
  CareerRepository,
  ReadAllCareersUseCase,
  EventRepository,
  ReadAllEventsUseCase,
  ProjectRepository,
  ReadAllProjectsUseCase,
])
void main() {}
