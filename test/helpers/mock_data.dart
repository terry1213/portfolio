import 'package:portfolio/core/error/failures.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/domain/entity/section.dart';
import 'package:portfolio/feature/event/domain/entity/event.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';

/// Mock data for testing
class MockData {
  // Blog Posts
  static const blogPost1 = BlogPost(
    title: 'Test Blog Post 1',
    detail: 'Test detail 1',
    image: 'https://example.com/image1.jpg',
    url1Text: 'Link 1',
    url1: 'https://example.com/link1',
    url2Text: 'Link 2',
    url2: 'https://example.com/link2',
  );

  static const blogPost2 = BlogPost(
    title: 'Test Blog Post 2',
    detail: 'Test detail 2',
    image: 'https://example.com/image2.jpg',
    url1Text: 'Link 3',
    url1: 'https://example.com/link3',
    url2Text: 'Link 4',
    url2: 'https://example.com/link4',
  );

  static final blogPosts = [blogPost1, blogPost2];

  // Careers
  static const section1 = Section(
    period: '2023.01 - 2023.12',
    detail: 'Test Project',
    works: ['Work 1', 'Work 2', 'Work 3'],
  );

  static const career1 = Career(
    company: 'Test Company',
    period: '2023.01 - Present',
    position: 'Software Engineer',
    detail: 'Test detail',
    sections: [section1],
  );

  static final careers = [career1];

  // Events
  static const event1 = Event(
    type: EventType.education,
    period: '2020.03 - 2024.02',
    detail: 'Test University',
  );

  static const event2 = Event(
    type: EventType.career,
    period: '2023.01 - Present',
    detail: 'Test Company',
  );

  static final events = [event1, event2];

  // Projects
  static const project1 = Project(
    title: 'Test Project',
    period: '2023.01 - 2023.12',
    team: 'Solo',
    detail: 'Test project detail',
    function: 'All features',
    techStack: 'Flutter, Dart',
    git: 'https://github.com/test/project',
    link: 'https://example.com',
    image: 'https://example.com/project.jpg',
  );

  static final projects = [project1];

  // Failures
  static const networkFailure = Failure.network(
    message: 'Network error',
    details: 'Connection failed',
  );

  static const parsingFailure = Failure.parsing(
    message: 'Parsing error',
    details: 'Invalid JSON',
  );

  static const notFoundFailure = Failure.notFound(
    message: 'Not found',
  );

  static const timeoutFailure = Failure.timeout(
    message: 'Timeout',
  );
}
