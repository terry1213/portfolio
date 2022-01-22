import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/models/post_model.dart';
import 'package:portfolio/modules/blog_module/blog_controller.dart';
import 'package:portfolio/modules/blog_module/local_widgets/double_post_section.dart';
import 'package:portfolio/modules/blog_module/local_widgets/post_section.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/url.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  static const List<PostModel> posts = <PostModel>[
    PostModel(
      title: 'Widget of the Week',
      body: "Flutter 공식 유튜브 채널에서는 일주일마다 특정 위젯에 대해서 설명해주는 'Widget of the Week'"
          " 영상 시리즈를 제공하고 있습니다.\n 'Widget of the Week' 영상의 내용을 정리할 뿐만 아니라, 각"
          ' 위젯에 대한 공식 문서도 참고하여 위젯의 사용법과 여러 설명들 또한 기록하고 있습니다.',
      image: 'assets/blog/widget_of_the_week.png',
      urlKey1: UrlKey.widgetOfTheWeekLast,
      urlKey2: UrlKey.widgetOfTheWeekTag,
    ),
    PostModel(
      title: 'Flutter/Dart Document',
      body: 'Flutter와 Dart는 공식 문서를 다양한 부분에 대하여 상세하게 제공합니다. 특히나'
          ' Flutter와 Dart는 정보를 얻을 수 있는 곳이 적기 때문에 공식 문서가 매우 중요하다고 생각합니다.\n'
          '그래서 궁금한 부분이 있다면 주로 공식 문서를 찾아서 공부하고, 읽은 문서의 내용을 한국어로 정리하여 업로드하고'
          ' 있습니다.',
      image: 'assets/blog/flutter_dart.png',
      urlKey1: UrlKey.flutterDartDocumentLast,
      urlKey2: UrlKey.flutterDartDocumentTag,
    ),
    PostModel(
      title: 'Decoding Flutter',
      body: 'Flutter 공식 유튜브 채널에서는 개발자들이 헷갈려하는 개념이나 궁금해하는 점들에 대해서 설명해주는 영상 시리즈를'
          ' 제공하고 있습니다.\n영상 주제 자체가 개념을 잘 세울 수 있게 해주는 주제이고, 일반 사용자 입장에서는 잘 알 수'
          ' 없는 내부 로직까지 설명해주기 때문에 모든 영상을 정리하고 있습니다.',
      image: 'assets/blog/decoding_flutter.jpeg',
      urlKey1: UrlKey.decodingFlutterLast,
      urlKey2: UrlKey.decodingFlutterTag,
    ),
    PostModel(
      title: 'State Management',
      body: "Flutter에서 다양한 방법으로 상태 관리를 할 수 있습니다. 그 중 'GetX', 'Provider',"
          " 'bloc'을 실무에서 사용해 봤으며, 'GetX', 'Provider'는 직접 사용법과 설명을 블로그에"
          ' 정리했습니다.',
      image: 'assets/blog/state_management.png',
      urlKey1: UrlKey.stateManagementGetx,
      urlKey2: UrlKey.stateManagementProvider,
    ),
    PostModel(
      title: 'Algorithm',
      body: "알고리즘적 사고 향상을 위해 '백준'과 '프로그래머스'에서 50개 이상의 다양한 프로그래밍 문제를 풀어봤습니다. 풀어본"
          ' 문제들 중 일부에 대해서 접근 방식과 풀이 과정을 정리해서 올리고 있습니다.',
      image: 'assets/blog/algorithm.png',
      urlKey1: UrlKey.algorithmLast,
      urlKey2: UrlKey.algorithmTag,
    ),
    PostModel(
      title: 'Error',
      body: '개발자로서 에러가 발생했을 때 해결하기에만 급급하지 말아야겠다고 다짐했습니다. 해결법만 외워서는 발전이 없기'
          ' 때문입니다. \n그래서 복잡한 에러를 마주칠 때마다 해당 에러가 발생하게 된 원인을 함께 공부하고 이를 블로그에'
          ' 기록하고 있습니다.',
      image: 'assets/blog/error.png',
      urlKey1: UrlKey.errorLast,
      urlKey2: UrlKey.errorTag,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final Size screenSize = MediaQuery.of(context).size;
    final BlogController _controller = Get.find<BlogController>();
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    final List<Widget> _carouselItems = screenSize.width < 1050
        ? posts
            .map(
              (PostModel post) => PostSection(
                post: post,
              ),
            )
            .toList()
        : Iterable<int>.generate(((posts.length) / 2).floor())
            .toList()
            .map(
              (int i) => DoublePostSection(
                post1: posts[2 * i],
                post2: posts[2 * i + 1],
              ),
            )
            .toList();
    final List<int> carouselIndexes = Iterable<int>.generate(posts.length)
        .toList()
        .sublist(0, screenSize.width < 1050 ? 6 : 3);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
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
          const Text('주로 Flutter에 대한 글을 작성하지만 그외에 다양한 내용도 다루고 있습니다.'),
          const Text('일주일에 2회씩 일년째 꾸준히 기록하고 있으며, 현재까지 약 100개의 게시글을 작성했습니다.'),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselIndexes.map((int i) {
              return IconButton(
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
                icon: GetBuilder<BlogController>(
                  tag: 'blog',
                  builder: (_) {
                    final int currentIndex =
                        screenSize.width >= 1050 && _controller.currentIndex > 2
                            ? _controller.currentIndex % 3
                            : _controller.currentIndex;
                    return Icon(
                      Icons.circle,
                      color: currentIndex == i
                          ? Theme.of(context).selectedRowColor
                          : Theme.of(context).unselectedWidgetColor,
                      size: 18,
                    );
                  },
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
                initialPage: _controller.currentIndex,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  _controller.changeCurrentIndex(index);
                },
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
                    // color: Colors.white10,
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
  }
}
