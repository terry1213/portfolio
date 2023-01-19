part of '../project_page.dart';

class _ProjectSection extends StatelessWidget {
  const _ProjectSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

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
                  _ProjectImageSection(
                    project: project,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _ProjectExplainSection(
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
                        _ProjectImageSection(
                          project: project,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: _ProjectExplainSection(
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

class _ProjectImageSection extends StatelessWidget {
  const _ProjectImageSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: ImageWithAnimatedOpacity(
                      image: NetworkImage(image),
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

class _ProjectExplainSection extends StatelessWidget {
  const _ProjectExplainSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

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
      ],
    );
  }
}
