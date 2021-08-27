import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/carouselIndexController.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogPage extends StatelessWidget {
  final ScrollController _scrollController;
  Map<String, String> _urls = {
    'Widget of the Week tag':
        'https://terry1213.github.io/tags/#widgetoftheweek',
    'Widget of the Week last':
        'https://terry1213.github.io/flutter/flutter-widget-of-the-week-table/',
    'Flutter/Dart Document tag': 'https://terry1213.github.io/tags/#document',
    'Flutter/Dart Document last':
        'https://terry1213.github.io/flutter/flutter-document-hot-reload/',
    'Decoding Flutter tag': 'https://terry1213.github.io/tags/#decodingflutter',
    'Decoding Flutter last':
        'https://terry1213.github.io/flutter/flutter-decoding-flutter-packages-vs-plugins/',
    'State Management getx':
        'https://terry1213.github.io/flutter/flutter-getx/',
    'State Management provider':
        'https://terry1213.github.io/flutter/flutter-provider/',
    'Algorithm tag':
        'https://terry1213.github.io/tags/#%EC%BD%94%EB%94%A9%EB%AC%B8%EC%A0%9C',
    'Algorithm last': 'https://terry1213.github.io/backjoon/9455/',
    'Error tag': 'https://terry1213.github.io/tags/#error',
    'Error last':
        'https://terry1213.github.io/flutter/flutter-a-problem-occurred-evaluating-project-app-path-may-not-be-null-or-empty-string-pathnull/',
  };

  BlogPage(this._scrollController);

  @override
  Widget build(BuildContext context) {
    final CarouselController _carouselController = CarouselController();
    final CarouselIndexController _carouselIndexController = Get.put(CarouselIndexController());
    Size size = MediaQuery.of(context).size;
    List<Widget> _carouselItems = [
      CarouselItem(
        CardSection(
          title: 'Widget of the Week',
          body:
              'Flutter 공식 유튜브 채널에서는 일주일마다 특정 위젯에 대해서 설명해주는 \'Widget of the Week\' 영상 시리즈를 제공하고 있습니다.\n'
              '\'Widget of the Week\' 영상의 내용을 정리할 뿐만 아니라, 각 위젯에 대한 공식 문서도 참고하여 위젯의 사용법과 여러 설명들 또한 기록하고 있습니다.',
          image: 'assets/blog/widget_of_the_week.png',
          urlKey1: 'Widget of the Week last',
          urlKey2: 'Widget of the Week tag',
          context: context,
        ),
        CardSection(
          title: 'Flutter/Dart Document',
          body:
              'Flutter와 Dart는 공식 문서를 다양한 부분에 대하여 상세하게 제공합니다. 특히나 Flutter와 Dart는 정보를 얻을 수 있는 곳이 적기 때문에 공식 문서가 매우 중요하다고 생각합니다.\n'
              '그래서 궁금한 부분이 있다면 주로 공식 문서를 찾아서 공부하고, 읽은 문서의 내용을 한국어로 정리하여 업로드하고 있습니다.',
          image: 'assets/blog/flutter_dart.png',
          urlKey1: 'Flutter/Dart Document last',
          urlKey2: 'Flutter/Dart Document tag',
          context: context,
        ),
        CardSection(
          title: 'Decoding Flutter',
          body:
              'Flutter 공식 유튜브 채널에서는 개발자들이 헷갈려하는 개념이나 궁금해하는 점들에 대해서 설명해주는 영상 시리즈를 제공하고 있습니다.\n'
              '영상 주제 자체가 개념을 잘 세울 수 있게 해주는 주제이고, 일반 사용자 입장에서는 잘 알 수 없는 내부 로직까지 설명해주기 때문에 모든 영상을 정리하고 있습니다.',
          image: 'assets/blog/decoding_flutter.jpeg',
          urlKey1: 'Decoding Flutter last',
          urlKey2: 'Decoding Flutter tag',
          context: context,
        ),
      ),
      CarouselItem(
        CardSection(
          title: 'State Management',
          body:
              'Flutter에서 다양한 방법으로 상태 관리를 할 수 있습니다. 그 중 \'GetX\', \'Provider\', \'bloc\'을 실무에서 사용해 봤으며, '
              '\'GetX\', \'Provider\'는 직접 사용법과 설명을 블로그에 정리했습니다.',
          image: 'assets/blog/state_management.png',
          urlKey1: 'State Management getx',
          urlKey2: 'State Management provider',
          context: context,
        ),
        CardSection(
          title: 'Algorithm',
          body:
              '알고리즘적 사고 향상을 위해 \'백준\'과 \'프로그래머스\'에서 50개 이상의 다양한 프로그래밍 문제를 풀어봤습니다. 풀어본 문제들 중 일부에 대해서 접근 방식과 풀이 과정을 정리해서 올리고 있습니다.',
          image: 'assets/blog/algorithm.png',
          urlKey1: 'Algorithm last',
          urlKey2: 'Algorithm tag',
          context: context,
        ),
        CardSection(
          title: 'Error',
          body:
              '개발자로서 에러가 발생했을 때 해결하기에만 급급하지 말아야겠다고 다짐했습니다. 해결법만 외워서는 발전이 없기 때문입니다. \n'
              '그래서 복잡한 에러를 마주칠 때마다 해당 에러가 발생하게 된 원인을 함께 공부하고 이를 블로그에 기록하고 있습니다.',
          image: 'assets/blog/error.png',
          urlKey1: 'Error last',
          urlKey2: 'Error tag',
          context: context,
        ),
      ),
    ];
    return Center(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1360 ? size.width - 80 : 1360,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blogs',
                      style: Theme.of(context).textTheme.headline2!,
                    ),
                    SizedBox(height: ScreenUtilMinimum(10).h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            '배운 것을 잊어버리지 않기 위해 기록하기 시작했습니다.\n'
                            '주로 Flutter에 대한 글을 작성하지만 그외에 다양한 내용도 다루고 있습니다.\n'
                            '일주일에 2회씩 일년째 꾸준히 기록하고 있으며, 현재까지 약 100개의 게시글을 작성했습니다.',
                          ),
                        ),
                        GestureDetector(
                          child: Icon(Icons.arrow_back),
                          onTap: () => _carouselController.previousPage(),
                        ),
                        GetBuilder<CarouselIndexController>(
                          builder: (_) => Text(
                            ' ${_.index + 1} / 2 ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(Icons.arrow_forward),
                          onTap: () => _carouselController.nextPage(),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtilMinimum(20).h),
                    Expanded(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: ScreenUtilMinimum(570).h,
                          viewportFraction: 1.07,
                          onPageChanged: (int index, CarouselPageChangedReason reason) {
                            _carouselIndexController.changeIndex(index);
                          },
                        ),
                        carouselController: _carouselController,
                        items: [0, 1].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: ScreenUtilMinimum(30).w,
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: ScreenUtilMinimum(20).h,
                                  horizontal: ScreenUtilMinimum(20).w,
                                ),
                                decoration: BoxDecoration(
                                  // color: Colors.white10,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: _carouselItems[i],
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CarouselItem(Widget first, Widget second, Widget third) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: first,
        ),
        SizedBox(width: ScreenUtilMinimum(40).w),
        Expanded(
          child: second,
        ),
        SizedBox(width: ScreenUtilMinimum(40).w),
        Expanded(
          child: third,
        ),
      ],
    );
  }

  Widget CardSection(
      {required String title,
      required String body,
      required String image,
      required String urlKey1,
      required String urlKey2,
      required BuildContext context}) {
    return Card(
      color: Colors.transparent,
      elevation: 0.0,
      // color: Color(0xFFF242424),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 20,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: ScreenUtilMinimum(20).h),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: ScreenUtilMinimum(10).h),
            Expanded(
              flex: 20,
              child: Text(body),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _launchURL(urlKey1),
                icon: Icon(Icons.launch),
                label: Text(
                  title != 'State Management' ? '최근 게시글' : 'GetX 게시글',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _launchURL(urlKey2),
                icon: Icon(Icons.launch),
                label: Text(
                  title != 'State Management' ? '전체 게시글' : 'Provider 게시글',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String key) async => await canLaunch(_urls[key] ?? '')
      ? await launch(_urls[key] ?? '')
      : throw 'Could not launch $_urls';
}
