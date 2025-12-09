import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/config/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:portfolio/feature/blog_post/data/data_source/blog_post_github_data_source.dart';
import 'package:portfolio/feature/career/data/data_source/career_github_data_source.dart';
import 'package:portfolio/feature/event/data/data_source/event_github_data_source.dart';
import 'package:portfolio/feature/project/data/data_source/project_github_data_source.dart';

import 'package:portfolio/feature/blog_post/data/repository/blog_post_repository.dart';
import 'package:portfolio/feature/career/data/repository/career_repository.dart';
import 'package:portfolio/feature/event/data/repository/event_repository.dart';
import 'package:portfolio/feature/project/data/repository/project_repository.dart';

import 'package:portfolio/feature/blog_post/domain/usecase/read_all_blog_posts_usecase.dart';
import 'package:portfolio/feature/career/domain/usecase/read_all_careers_usecase.dart';
import 'package:portfolio/feature/event/domain/usecase/read_all_events_usecase.dart';
import 'package:portfolio/feature/project/domain/usecase/read_all_projects_usecase.dart';

import 'package:portfolio/core/controller/theme_controller.dart';

import 'package:portfolio/ui/view/blog_view/blog_view_model.dart';
import 'package:portfolio/ui/view/career_view/career_view_model.dart';
import 'package:portfolio/ui/view/project_view/project_view_model.dart';
import 'package:portfolio/ui/view/about_view/about_view_model.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  getIt.registerLazySingleton<Logger>(() => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
          colors: true,
          printEmojis: true,
        ),
      ));

  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      connectTimeout: AppConstants.networkTimeout,
      receiveTimeout: AppConstants.networkTimeout,
      validateStatus: (status) =>
          status != null && status < AppConstants.httpSuccessStatusThreshold,
    ));

    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
      logPrint: (obj) => getIt<Logger>().d(obj),
    ));

    return dio;
  });

  getIt.registerLazySingleton<BlogPostGithubDataSource>(
    () => BlogPostGithubDataSource(),
  );
  getIt.registerLazySingleton<CareerGithubDataSource>(
    () => CareerGithubDataSource(),
  );
  getIt.registerLazySingleton<EventGithubDataSource>(
    () => EventGithubDataSource(),
  );
  getIt.registerLazySingleton<ProjectGithubDataSource>(
    () => ProjectGithubDataSource(),
  );

  getIt.registerLazySingleton<BlogPostRepository>(
    () => BlogPostRepository(),
  );
  getIt.registerLazySingleton<CareerRepository>(
    () => CareerRepository(),
  );
  getIt.registerLazySingleton<EventRepository>(
    () => EventRepository(),
  );
  getIt.registerLazySingleton<ProjectRepository>(
    () => ProjectRepository(),
  );

  getIt.registerFactory<ReadAllBlogPostsUseCase>(
    () => ReadAllBlogPostsUseCase(getIt()),
  );
  getIt.registerFactory<ReadAllCareersUseCase>(
    () => ReadAllCareersUseCase(getIt()),
  );
  getIt.registerFactory<ReadAllEventsUseCase>(
    () => ReadAllEventsUseCase(getIt()),
  );
  getIt.registerFactory<ReadAllProjectsUseCase>(
    () => ReadAllProjectsUseCase(getIt()),
  );

  getIt.registerLazySingleton<ThemeController>(
    () => ThemeController(getIt()),
  );

  getIt.registerFactory<BlogViewModel>(
    () => BlogViewModel(),
  );
  getIt.registerFactory<CareerViewModel>(
    () => CareerViewModel(),
  );
  getIt.registerFactory<ProjectViewModel>(
    () => ProjectViewModel(),
  );
  getIt.registerFactory<AboutViewModel>(
    () => AboutViewModel(),
  );
}
