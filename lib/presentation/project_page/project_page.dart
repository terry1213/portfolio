import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/project_page/project_page_controller.dart';
import 'package:portfolio/ui/component/horizontal_dashed_divider.dart';
import 'package:portfolio/ui/component/image_with_animated_opacity.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

part 'widgets/project_section.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  final List<ProjectModel> _projects = const <ProjectModel>[
    ProjectModel(
      title: '아지트(Ajite)',
      images: <String>[
        'assets/project/ajite1.png',
        'assets/project/ajite2.png',
        'assets/project/ajite3.png',
        'assets/project/ajite4.png',
      ],
      link: 'https://projectintheclass.github.io/ajite/',
      detail: '음악을 공유하고자 하는 사람과 새로운 음악을 찾는 사람을 위한 음악 공유 어플입니다.'
          ' 아지트(Ajite)라는 음악 공유 공간을 제공하여 그 안에서 자유롭게 음악을 공유할 수 있습니다.'
          '\n아지트(Ajite)를 통해 코더스하이 iOS 어플리케이션 캠프에서 최우수상을 수상할 수 있었습니다.',
      function: '유튜브 음악 공유, 플레이리스트 기능, 아지트 생성 및 관리, 소셜 로그인',
      techStack: 'Swift, Firebase, KakaoTalk API, Naver API, YouTube Data API',
    ),
    // ProjectModel(
    //   title: '오답 노트',
    //   images: <String>[
    //     '',
    //   ],
    //   link: '',
    //   detail: '',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = ResponsiveWidget.isLargeScreen(context)
        ? screenSize.width / 7
        : ResponsiveWidget.isMediumScreen(context)
            ? screenSize.width / 10
            : screenSize.width / 13;
    final List<int> carouselIndexes =
        Iterable<int>.generate(_projects.length).toList();
    return ChangeNotifierProvider(
        create: (context) => ProjectPageController(currentIndex: 0),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 70),
          child: Column(
            children: <Widget>[
              Text(
                'Project',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: carouselIndexes.map((int i) {
                  return IconButton(
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                    icon: Consumer<ProjectPageController>(
                      builder: (
                        BuildContext context,
                        ProjectPageController projectPageController,
                        Widget? child,
                      ) {
                        final int currentIndex = screenSize.width >= 1050 &&
                                projectPageController.currentIndex > 2
                            ? projectPageController.currentIndex % 3
                            : projectPageController.currentIndex;
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
              const SizedBox(height: 20),
              Consumer<ProjectPageController>(
                builder: (
                  BuildContext context,
                  ProjectPageController projectPageController,
                  Widget? child,
                ) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      initialPage: projectPageController.currentIndex,
                      onPageChanged:
                          (int index, CarouselPageChangedReason reason) {
                        projectPageController.changeCurrentIndex(index);
                      },
                      viewportFraction: 1,
                      aspectRatio: screenSize.width < 1050
                          ? 16 / 18 * (screenSize.width / 1050)
                          : (screenSize.width < 1300 ? 16 / 10 : 16 / 8),
                    ),
                    carouselController: carouselController,
                    items: _projects
                        .map(
                          (ProjectModel project) => Builder(
                            builder: (BuildContext context) {
                              return _ProjectSection(
                                project: project,
                              );
                            },
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.images,
    required this.link,
    required this.detail,
    required this.function,
    required this.techStack,
  });

  final String title;
  final List<String> images;
  final String link;
  final String detail;
  final String function;
  final String techStack;
}
