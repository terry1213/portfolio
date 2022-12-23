import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/component/image_with_animated_opacity.dart';
import 'package:portfolio/component/template.dart';
import 'package:portfolio/feature/blog_post/domain/entity/blog_post.dart';
import 'package:portfolio/presentation/blog_page/blog_page_controller.dart';
import 'package:portfolio/presentation/blog_page/blog_page_state.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/double_post_section.dart';
part 'widgets/post_section.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    return Template(
      child: ChangeNotifierProvider(
        create: (context) => BlogPageController(),
        child: Consumer<BlogPageController>(
          builder: (
            BuildContext context,
            BlogPageController blogPageController,
            Widget? child,
          ) {
            if (blogPageController.blogPageState.blogPageStateStatus ==
                    BlogPageStateStatus.initial ||
                blogPageController.blogPageState.blogPageStateStatus ==
                    BlogPageStateStatus.loading) {
              return const SizedBox();
            }
            final List<Widget> _carouselItems = screenSize.width < 1050
                ? blogPageController.blogPosts
                    .map(
                      (BlogPost post) => _PostSection(
                        post: post,
                      ),
                    )
                    .toList()
                : Iterable<int>.generate(
                        ((blogPageController.blogPosts.length) / 2).floor())
                    .toList()
                    .map(
                      (int i) => _DoublePostSection(
                        post1: blogPageController.blogPosts[2 * i],
                        post2: blogPageController.blogPosts[2 * i + 1],
                      ),
                    )
                    .toList();
            final List<int> carouselIndexes =
                Iterable<int>.generate(blogPageController.blogPosts.length)
                    .toList()
                    .sublist(0, screenSize.width < 1050 ? 6 : 3);

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
                  const Text('현재까지 약 130개의 게시글을 작성했습니다.'),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: carouselIndexes.map((int i) {
                      final int currentIndex = screenSize.width >= 1050 &&
                              blogPageController.carouselCurrentIndex > 2
                          ? blogPageController.carouselCurrentIndex % 3
                          : blogPageController.carouselCurrentIndex;
                      return IconButton(
                        constraints: const BoxConstraints(),
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.circle,
                          color: currentIndex == i
                              ? Theme.of(context).selectedRowColor
                              : Theme.of(context).unselectedWidgetColor,
                          size: 18,
                        ),
                        onPressed: () => carouselController.animateToPage(i),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: screenSize.width < 1050
                        ? 500
                        : (screenSize.width < 1300
                            ? screenSize.width * 6 / 7
                            : 1300 * 6 / 7),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 630,
                        initialPage: blogPageController.carouselCurrentIndex,
                        onPageChanged:
                            (int index, CarouselPageChangedReason reason) =>
                                blogPageController.changeCurrentIndex(index),
                        viewportFraction: screenSize.width < 600 ? 1.25 : 1,
                      ),
                      carouselController: carouselController,
                      items: carouselIndexes.map((int i) {
                        return Container(
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
                          child: _carouselItems[i],
                        );
                      }).toList(),
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
