import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/modules/project_module/project_page.dart';

import '../../../global_widgets/horizontal_dashed_divider.dart';
import '../../../global_widgets/image_with_animated_opacity.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 40.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              project.title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 30),
            if (screenSize.width < 1050)
              Column(
                children: <Widget>[
                  ProjectImageSection(
                    project: project,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProjectExplainSection(
                    project: project,
                  ),
                ],
              )
            else
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ProjectImageSection(
                          project: project,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: ProjectExplainSection(
                      project: project,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class ProjectImageSection extends StatelessWidget {
  const ProjectImageSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 12,
        autoPlay: true,
        autoPlayInterval: const Duration(
          seconds: 10,
        ),
        viewportFraction: 1.5,
      ),
      items: project.images
          .map(
            (String image) => Builder(
              builder: (BuildContext context) {
                return AspectRatio(
                  aspectRatio: 16 / 12,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: ImageWithAnimatedOpacity(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }
}

class ProjectExplainSection extends StatelessWidget {
  const ProjectExplainSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(project.detail),
        const HorizontalDashedDivider(
          space: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 12,
              ),
              child: Icon(
                Icons.circle,
                size: 15,
              ),
            ),
            const Text('주요 기능:'),
            const SizedBox(width: 10),
            Expanded(
              child: Text(project.function),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 12,
              ),
              child: Icon(
                Icons.circle,
                size: 15,
              ),
            ),
            const Text('기술 스택:'),
            const SizedBox(width: 10),
            Expanded(
              child: Text(project.techStack),
            ),
          ],
        ),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     const Padding(
        //       padding: EdgeInsets.symmetric(
        //         horizontal: 5,
        //         vertical: 12,
        //       ),
        //       child: Icon(
        //         Icons.circle,
        //         size: 15,
        //       ),
        //     ),
        //     const Text('어플 소개:'),
        //     const SizedBox(width: 10),
        //     Expanded(
        //       child: Text(project.link),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
