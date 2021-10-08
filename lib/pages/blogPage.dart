import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/carouselIndexController.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogPage extends StatelessWidget {
  final Map<String, String> _urls = const {
    'Widget of the Week tag':
        'https://terry1213.github.io/tags/#widgetoftheweek',
    'Widget of the Week last':
        'https://terry1213.github.io/flutter/flutter-widget-of-the-week-sliverappbar/',
    'Flutter/Dart Document tag': 'https://terry1213.github.io/tags/#document',
    'Flutter/Dart Document last':
        'https://terry1213.github.io/flutter/flutter-document-hot-reload/',
    'Decoding Flutter tag': 'https://terry1213.github.io/tags/#decodingflutter',
    'Decoding Flutter last':
        'https://terry1213.github.io/flutter/flutter-decoding-flutter-renderobjects/',
    'State Management getx':
        'https://terry1213.github.io/flutter/flutter-getx/',
    'State Management provider':
        'https://terry1213.github.io/flutter/flutter-provider/',
    'Algorithm tag':
        'https://terry1213.github.io/tags/#%EC%BD%94%EB%94%A9%EB%AC%B8%EC%A0%9C',
    'Algorithm last': 'https://terry1213.github.io/backjoon/9455/',
    'Error tag': 'https://terry1213.github.io/tags/#error',
    'Error last':
        'https://terry1213.github.io/flutter/flutter-failed-to-start-the-dart-cli-isolate-null/',
  };

  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final CarouselIndexController _carouselIndexController =
        Get.find<CarouselIndexController>(tag: 'blog');
    List<Widget> _cardScetions = [
      CardSection(
        context,
        title: 'Widget of the Week',
        body:
            'Flutter 공식 유튜브 채널에서는 일주일마다 특정 위젯에 대해서 설명해주는 \'Widget of the Week\' 영상 시리즈를 제공하고 있습니다.\n'
            '\'Widget of the Week\' 영상의 내용을 정리할 뿐만 아니라, 각 위젯에 대한 공식 문서도 참고하여 위젯의 사용법과 여러 설명들 또한 기록하고 있습니다.',
        image: 'assets/blog/widget_of_the_week.png',
        urlKey1: 'Widget of the Week last',
        urlKey2: 'Widget of the Week tag',
      ),
      CardSection(
        context,
        title: 'Flutter/Dart Document',
        body:
            'Flutter와 Dart는 공식 문서를 다양한 부분에 대하여 상세하게 제공합니다. 특히나 Flutter와 Dart는 정보를 얻을 수 있는 곳이 적기 때문에 공식 문서가 매우 중요하다고 생각합니다.\n'
            '그래서 궁금한 부분이 있다면 주로 공식 문서를 찾아서 공부하고, 읽은 문서의 내용을 한국어로 정리하여 업로드하고 있습니다.',
        image: 'assets/blog/flutter_dart.png',
        urlKey1: 'Flutter/Dart Document last',
        urlKey2: 'Flutter/Dart Document tag',
      ),
      CardSection(
        context,
        title: 'Decoding Flutter',
        body:
            'Flutter 공식 유튜브 채널에서는 개발자들이 헷갈려하는 개념이나 궁금해하는 점들에 대해서 설명해주는 영상 시리즈를 제공하고 있습니다.\n'
            '영상 주제 자체가 개념을 잘 세울 수 있게 해주는 주제이고, 일반 사용자 입장에서는 잘 알 수 없는 내부 로직까지 설명해주기 때문에 모든 영상을 정리하고 있습니다.',
        image: 'assets/blog/decoding_flutter.jpeg',
        urlKey1: 'Decoding Flutter last',
        urlKey2: 'Decoding Flutter tag',
      ),
      CardSection(
        context,
        title: 'State Management',
        body:
            'Flutter에서 다양한 방법으로 상태 관리를 할 수 있습니다. 그 중 \'GetX\', \'Provider\', \'bloc\'을 실무에서 사용해 봤으며, '
            '\'GetX\', \'Provider\'는 직접 사용법과 설명을 블로그에 정리했습니다.',
        image: 'assets/blog/state_management.png',
        urlKey1: 'State Management getx',
        urlKey2: 'State Management provider',
      ),
      CardSection(
        context,
        title: 'Algorithm',
        body:
            '알고리즘적 사고 향상을 위해 \'백준\'과 \'프로그래머스\'에서 50개 이상의 다양한 프로그래밍 문제를 풀어봤습니다. 풀어본 문제들 중 일부에 대해서 접근 방식과 풀이 과정을 정리해서 올리고 있습니다.',
        image: 'assets/blog/algorithm.png',
        urlKey1: 'Algorithm last',
        urlKey2: 'Algorithm tag',
      ),
      CardSection(
        context,
        title: 'Error',
        body:
            '개발자로서 에러가 발생했을 때 해결하기에만 급급하지 말아야겠다고 다짐했습니다. 해결법만 외워서는 발전이 없기 때문입니다. \n'
            '그래서 복잡한 에러를 마주칠 때마다 해당 에러가 발생하게 된 원인을 함께 공부하고 이를 블로그에 기록하고 있습니다.',
        image: 'assets/blog/error.png',
        urlKey1: 'Error last',
        urlKey2: 'Error tag',
      ),
    ];
    double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    List<Widget> _carouselItems = screenSize.width < 1050
        ? _cardScetions
        : [
            CarouselItem(
              _cardScetions[0],
              _cardScetions[1],
            ),
            CarouselItem(
              _cardScetions[2],
              _cardScetions[3],
            ),
            CarouselItem(
              _cardScetions[4],
              _cardScetions[5],
            ),
          ];
    List<int> carouselIndexes =
        [0, 1, 2, 3, 4, 5].sublist(0, screenSize.width < 1050 ? 6 : 3);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
      child: Column(
        children: [
          Text(
            'Blog',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          Text('배운 것을 잊어버리지 않기 위해 기록하기 시작했습니다.'),
          Text('주로 Flutter에 대한 글을 작성하지만 그외에 다양한 내용도 다루고 있습니다.'),
          Text('일주일에 2회씩 일년째 꾸준히 기록하고 있으며, 현재까지 약 100개의 게시글을 작성했습니다.'),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselIndexes.map((i) {
              return IconButton(
                constraints: BoxConstraints(),
                padding: EdgeInsets.zero,
                icon: GetBuilder<CarouselIndexController>(
                  tag: 'blog',
                  builder: (_) {
                    var currentIndex = screenSize.width >= 1050 &&
                            _carouselIndexController.currentIndex > 2
                        ? _carouselIndexController.currentIndex % 3
                        : _carouselIndexController.currentIndex;
                    return Icon(
                      Icons.circle,
                      color: currentIndex == i
                          ? Theme.of(context).selectedRowColor
                          : Theme.of(context).unselectedWidgetColor,
                      size: 18,
                    );
                  },
                ),
                onPressed: () => _carouselIndexController.carouselController
                    .animateToPage(i),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
          Container(
            width: screenSize.width < 1050
                ? 500
                : (screenSize.width < 1300
                    ? screenSize.width * 6 / 7
                    : 1300 * 6 / 7),
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 11,
                height: 630,
                initialPage: _carouselIndexController.currentIndex,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  _carouselIndexController.changeCurrentIndex(index);
                },
                viewportFraction: screenSize.width < 600 ? 1.25 : 1,
              ),
              carouselController: _carouselIndexController.carouselController,
              items: carouselIndexes.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
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
    );
  }

  Widget CarouselItem(Widget first, Widget second) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: first,
        ),
        SizedBox(width: 40),
        Expanded(
          child: second,
        ),
      ],
    );
  }

  Widget CardSection(
    BuildContext context, {
    required String title,
    required String body,
    required String image,
    required String urlKey1,
    required String urlKey2,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.8,
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
            SizedBox(height: 15),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Text(body),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _launchURL(urlKey1),
                icon: Icon(Icons.launch),
                label: Text(
                  title != 'State Management' ? '최근 게시글' : 'GetX 게시글',
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
