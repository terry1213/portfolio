import 'package:flutter/material.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/ui/component/image_with_animated_opacity.dart';
import 'package:portfolio/ui/component/template.dart';
import 'package:portfolio/ui/view/blog_view/blog_view_model.dart';
import 'package:portfolio/ui/view/blog_view/blog_view_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/double_post_section.dart';
part 'widgets/post_section.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider(
        create: (context) => BlogViewModel(),
        child: Consumer<BlogViewModel>(
          builder: (
            BuildContext context,
            BlogViewModel blogViewModel,
            Widget? child,
          ) {
            if (blogViewModel.blogViewState.blogViewStateStatus ==
                    BlogViewStateStatus.initial ||
                blogViewModel.blogViewState.blogViewStateStatus ==
                    BlogViewStateStatus.loading) {
              return const SizedBox();
            }
            final List<Widget> carouselItems = screenSize.width < 1050
                ? blogViewModel.blogPosts
                    .map(
                      (BlogPost post) => _PostSection(
                        post: post,
                      ),
                    )
                    .toList()
                : Iterable<int>.generate(
                        ((blogViewModel.blogPosts.length) / 2).floor())
                    .toList()
                    .map(
                      (int i) => _DoublePostSection(
                        post1: blogViewModel.blogPosts[2 * i],
                        post2: blogViewModel.blogPosts[2 * i + 1],
                      ),
                    )
                    .toList();

            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 70),
              child: Column(
                children: <Widget>[
                  Text(
                    'Blog',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  const Text('배운 것을 잊어버리지 않기 위해 기록하기 시작했습니다.'),
                  const Text('주로 Flutter에 대한 글을 작성하지만 그 외에 다양한 내용도 다루고 있습니다.'),
                  const Text(
                      '현재까지 약 130개의 게시글을 작성했으며, 하루 평균 300회, 총 100,000회 이상의 방문자 수를 달성했습니다.'),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: screenSize.width < 1050
                        ? 500
                        : (screenSize.width < 1300
                            ? screenSize.width * 6 / 7
                            : 1300 * 6 / 7),
                    child: Column(
                      children: List<Widget>.generate(
                        carouselItems.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 630,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: carouselItems[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
